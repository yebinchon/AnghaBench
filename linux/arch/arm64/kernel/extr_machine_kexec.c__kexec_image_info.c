
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kimage {unsigned long nr_segments; TYPE_1__* segment; int head; int start; int type; } ;
struct TYPE_2__ {int mem; int memsz; } ;


 int PAGE_SIZE ;
 int pr_debug (char*,...) ;

__attribute__((used)) static void _kexec_image_info(const char *func, int line,
 const struct kimage *kimage)
{
 unsigned long i;

 pr_debug("%s:%d:\n", func, line);
 pr_debug("  kexec kimage info:\n");
 pr_debug("    type:        %d\n", kimage->type);
 pr_debug("    start:       %lx\n", kimage->start);
 pr_debug("    head:        %lx\n", kimage->head);
 pr_debug("    nr_segments: %lu\n", kimage->nr_segments);

 for (i = 0; i < kimage->nr_segments; i++) {
  pr_debug("      segment[%lu]: %016lx - %016lx, 0x%lx bytes, %lu pages\n",
   i,
   kimage->segment[i].mem,
   kimage->segment[i].mem + kimage->segment[i].memsz,
   kimage->segment[i].memsz,
   kimage->segment[i].memsz / PAGE_SIZE);
 }
}
