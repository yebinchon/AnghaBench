
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bss_size; scalar_t__ image_size; scalar_t__ default_lma; } ;


 scalar_t__ decompress_offset ;
 unsigned long max (scalar_t__,scalar_t__) ;
 TYPE_1__ vmlinux ;

unsigned long mem_safe_offset(void)
{





 return max(decompress_offset + vmlinux.image_size,
     vmlinux.default_lma + vmlinux.image_size + vmlinux.bss_size);
}
