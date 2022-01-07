
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ kernel_r2; } ;
struct kimage {int nr_segments; TYPE_1__ arch; struct kexec_segment* segment; scalar_t__ start; } ;
struct kexec_segment {scalar_t__ mem; scalar_t__ buf; int memsz; } ;
typedef scalar_t__ __be32 ;


 int EINVAL ;
 scalar_t__ KEXEC_ARM_ATAGS_OFFSET ;
 scalar_t__ KEXEC_ARM_ZIMAGE_OFFSET ;
 int OF_DT_HEADER ;
 scalar_t__ cpu_to_be32 (int ) ;
 int get_user (scalar_t__,scalar_t__*) ;
 int idmap_to_phys (scalar_t__) ;
 int memblock_is_region_memory (int ,int ) ;
 int num_possible_cpus () ;
 int platform_can_cpu_hotplug () ;
 scalar_t__ platform_can_secondary_boot () ;

int machine_kexec_prepare(struct kimage *image)
{
 struct kexec_segment *current_segment;
 __be32 header;
 int i, err;

 image->arch.kernel_r2 = image->start - KEXEC_ARM_ZIMAGE_OFFSET
         + KEXEC_ARM_ATAGS_OFFSET;






 if (num_possible_cpus() > 1 && platform_can_secondary_boot() &&
     !platform_can_cpu_hotplug())
  return -EINVAL;





 for (i = 0; i < image->nr_segments; i++) {
  current_segment = &image->segment[i];

  if (!memblock_is_region_memory(idmap_to_phys(current_segment->mem),
            current_segment->memsz))
   return -EINVAL;

  err = get_user(header, (__be32*)current_segment->buf);
  if (err)
   return err;

  if (header == cpu_to_be32(OF_DT_HEADER))
   image->arch.kernel_r2 = current_segment->mem;
 }
 return 0;
}
