
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int ia64_mca_cmc_vector_enable ;
 int on_each_cpu (int ,int *,int ) ;

__attribute__((used)) static void
ia64_mca_cmc_vector_enable_keventd(struct work_struct *unused)
{
 on_each_cpu(ia64_mca_cmc_vector_enable, ((void*)0), 0);
}
