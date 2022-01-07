
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct kyber_hctx_data {int * kcq_map; } ;
struct flush_kcq_data {unsigned int sched_domain; struct list_head* list; struct kyber_hctx_data* khd; } ;


 int flush_busy_kcq ;
 int sbitmap_for_each_set (int *,int ,struct flush_kcq_data*) ;

__attribute__((used)) static void kyber_flush_busy_kcqs(struct kyber_hctx_data *khd,
      unsigned int sched_domain,
      struct list_head *list)
{
 struct flush_kcq_data data = {
  .khd = khd,
  .sched_domain = sched_domain,
  .list = list,
 };

 sbitmap_for_each_set(&khd->kcq_map[sched_domain],
        flush_busy_kcq, &data);
}
