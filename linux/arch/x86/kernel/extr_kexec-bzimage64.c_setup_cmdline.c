
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef long uint32_t ;
struct TYPE_3__ {int elf_load_addr; } ;
struct kimage {scalar_t__ type; TYPE_1__ arch; } ;
struct TYPE_4__ {long cmd_line_ptr; } ;
struct boot_params {long ext_cmd_line_ptr; TYPE_2__ hdr; } ;


 scalar_t__ KEXEC_TYPE_CRASH ;
 int memcpy (char*,char*,unsigned long) ;
 int pr_debug (char*,char*) ;
 unsigned long sprintf (char*,char*,int ) ;

__attribute__((used)) static int setup_cmdline(struct kimage *image, struct boot_params *params,
    unsigned long bootparams_load_addr,
    unsigned long cmdline_offset, char *cmdline,
    unsigned long cmdline_len)
{
 char *cmdline_ptr = ((char *)params) + cmdline_offset;
 unsigned long cmdline_ptr_phys, len = 0;
 uint32_t cmdline_low_32, cmdline_ext_32;

 if (image->type == KEXEC_TYPE_CRASH) {
  len = sprintf(cmdline_ptr,
   "elfcorehdr=0x%lx ", image->arch.elf_load_addr);
 }
 memcpy(cmdline_ptr + len, cmdline, cmdline_len);
 cmdline_len += len;

 cmdline_ptr[cmdline_len - 1] = '\0';

 pr_debug("Final command line is: %s\n", cmdline_ptr);
 cmdline_ptr_phys = bootparams_load_addr + cmdline_offset;
 cmdline_low_32 = cmdline_ptr_phys & 0xffffffffUL;
 cmdline_ext_32 = cmdline_ptr_phys >> 32;

 params->hdr.cmd_line_ptr = cmdline_low_32;
 if (cmdline_ext_32)
  params->ext_cmd_line_ptr = cmdline_ext_32;

 return 0;
}
