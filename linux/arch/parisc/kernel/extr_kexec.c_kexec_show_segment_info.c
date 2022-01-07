
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kimage {TYPE_1__* segment; } ;
struct TYPE_2__ {scalar_t__ memsz; scalar_t__ mem; } ;


 unsigned long PAGE_SIZE ;
 int pr_debug (char*,unsigned long,scalar_t__,scalar_t__,unsigned long,unsigned long) ;

__attribute__((used)) static void kexec_show_segment_info(const struct kimage *kimage,
        unsigned long n)
{
 pr_debug("    segment[%lu]: %016lx - %016lx, 0x%lx bytes, %lu pages\n",
   n,
   kimage->segment[n].mem,
   kimage->segment[n].mem + kimage->segment[n].memsz,
   (unsigned long)kimage->segment[n].memsz,
   (unsigned long)kimage->segment[n].memsz / PAGE_SIZE);
}
