
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbitmap {int dummy; } ;
struct kyber_ctx_queue {int lock; int * rq_list; } ;
struct flush_kcq_data {size_t sched_domain; int list; TYPE_1__* khd; } ;
struct TYPE_2__ {struct kyber_ctx_queue* kcqs; } ;


 int list_splice_tail_init (int *,int ) ;
 int sbitmap_clear_bit (struct sbitmap*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool flush_busy_kcq(struct sbitmap *sb, unsigned int bitnr, void *data)
{
 struct flush_kcq_data *flush_data = data;
 struct kyber_ctx_queue *kcq = &flush_data->khd->kcqs[bitnr];

 spin_lock(&kcq->lock);
 list_splice_tail_init(&kcq->rq_list[flush_data->sched_domain],
         flush_data->list);
 sbitmap_clear_bit(sb, bitnr);
 spin_unlock(&kcq->lock);

 return 1;
}
