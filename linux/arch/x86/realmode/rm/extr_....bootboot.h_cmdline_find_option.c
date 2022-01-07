
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long cmd_line_ptr; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;


 int __cmdline_find_option (unsigned long,char const*,char*,int) ;
 TYPE_2__ boot_params ;

__attribute__((used)) static inline int cmdline_find_option(const char *option, char *buffer, int bufsize)
{
 unsigned long cmd_line_ptr = boot_params.hdr.cmd_line_ptr;

 if (cmd_line_ptr >= 0x100000)
  return -1;

 return __cmdline_find_option(cmd_line_ptr, option, buffer, bufsize);
}
