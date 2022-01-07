
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kimage {int nr_segments; scalar_t__ start; TYPE_1__* segment; } ;
struct TYPE_2__ {scalar_t__ memsz; scalar_t__ mem; } ;


 int printk (char*,...) ;

__attribute__((used)) static void kexec_info(struct kimage *image)
{
        int i;
 printk("kexec information\n");
 for (i = 0; i < image->nr_segments; i++) {
         printk("  segment[%d]: 0x%08x - 0x%08x (0x%08x)\n",
         i,
         (unsigned int)image->segment[i].mem,
         (unsigned int)image->segment[i].mem +
         image->segment[i].memsz,
         (unsigned int)image->segment[i].memsz);
 }
 printk("  start     : 0x%08x\n\n", (unsigned int)image->start);
}
