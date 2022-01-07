
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int image_size; int bss_size; scalar_t__ default_lma; } ;


 int memset (void*,int ,int ) ;
 TYPE_1__ vmlinux ;

__attribute__((used)) static void clear_bss_section(void)
{
 memset((void *)vmlinux.default_lma + vmlinux.image_size, 0, vmlinux.bss_size);
}
