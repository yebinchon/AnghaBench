
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {int dummy; } ;
struct shrink_control {int dummy; } ;


 int kvm_total_used_mmu_pages ;
 unsigned long percpu_counter_read_positive (int *) ;

__attribute__((used)) static unsigned long
mmu_shrink_count(struct shrinker *shrink, struct shrink_control *sc)
{
 return percpu_counter_read_positive(&kvm_total_used_mmu_pages);
}
