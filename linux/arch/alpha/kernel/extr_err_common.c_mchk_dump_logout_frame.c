
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct el_common {scalar_t__ sys_offset; scalar_t__ size; scalar_t__ proc_offset; int frame_rev; int code; scalar_t__ err2; scalar_t__ retry; } ;


 int err_print_prefix ;
 int mchk_dump_mem (void*,scalar_t__,int *) ;
 int printk (char*,int ,...) ;

void
mchk_dump_logout_frame(struct el_common *mchk_header)
{
 printk("%s  -- Frame Header --\n"
          "    Frame Size:   %d (0x%x) bytes\n"
          "    Flags:        %s%s\n"
          "    MCHK Code:    0x%x\n"
          "    Frame Rev:    %d\n"
          "    Proc Offset:  0x%08x\n"
          "    Sys Offset:   0x%08x\n"
            "  -- Processor Region --\n",
        err_print_prefix,
        mchk_header->size, mchk_header->size,
        mchk_header->retry ? "RETRY " : "",
            mchk_header->err2 ? "SECOND_ERR " : "",
        mchk_header->code,
        mchk_header->frame_rev,
        mchk_header->proc_offset,
        mchk_header->sys_offset);

 mchk_dump_mem((void *)
        ((unsigned long)mchk_header + mchk_header->proc_offset),
        mchk_header->sys_offset - mchk_header->proc_offset,
        ((void*)0));

 printk("%s  -- System Region --\n", err_print_prefix);
 mchk_dump_mem((void *)
        ((unsigned long)mchk_header + mchk_header->sys_offset),
        mchk_header->size - mchk_header->sys_offset,
        ((void*)0));
 printk("%s  -- End of Frame --\n", err_print_prefix);
}
