
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcore {int num_threads; } ;
struct core_info {int n_subcores; struct kvmppc_vcore** vc; int * subcore_threads; int total_threads; int max_subcore_threads; } ;


 int memset (struct core_info*,int ,int) ;

__attribute__((used)) static void init_core_info(struct core_info *cip, struct kvmppc_vcore *vc)
{
 memset(cip, 0, sizeof(*cip));
 cip->n_subcores = 1;
 cip->max_subcore_threads = vc->num_threads;
 cip->total_threads = vc->num_threads;
 cip->subcore_threads[0] = vc->num_threads;
 cip->vc[0] = vc;
}
