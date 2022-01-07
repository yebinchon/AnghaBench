
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct sbq_wait_state {TYPE_2__ wait; } ;
struct TYPE_3__ {int entry; } ;
struct sbq_wait {TYPE_1__ wait; } ;
struct sbitmap_queue {int dummy; } ;
struct kyber_queue_data {struct sbitmap_queue* domain_tokens; } ;
struct kyber_hctx_data {unsigned int cur_domain; struct sbq_wait_state** domain_ws; int * wait_index; struct sbq_wait* domain_wait; } ;
struct blk_mq_hw_ctx {int dummy; } ;


 int __sbitmap_queue_get (struct sbitmap_queue*) ;
 scalar_t__ list_empty_careful (int *) ;
 int sbitmap_add_wait_queue (struct sbitmap_queue*,struct sbq_wait_state*,struct sbq_wait*) ;
 int sbitmap_del_wait_queue (struct sbq_wait*) ;
 struct sbq_wait_state* sbq_wait_ptr (struct sbitmap_queue*,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int kyber_get_domain_token(struct kyber_queue_data *kqd,
      struct kyber_hctx_data *khd,
      struct blk_mq_hw_ctx *hctx)
{
 unsigned int sched_domain = khd->cur_domain;
 struct sbitmap_queue *domain_tokens = &kqd->domain_tokens[sched_domain];
 struct sbq_wait *wait = &khd->domain_wait[sched_domain];
 struct sbq_wait_state *ws;
 int nr;

 nr = __sbitmap_queue_get(domain_tokens);






 if (nr < 0 && list_empty_careful(&wait->wait.entry)) {
  ws = sbq_wait_ptr(domain_tokens,
      &khd->wait_index[sched_domain]);
  khd->domain_ws[sched_domain] = ws;
  sbitmap_add_wait_queue(domain_tokens, ws, wait);





  nr = __sbitmap_queue_get(domain_tokens);
 }
 if (nr >= 0 && !list_empty_careful(&wait->wait.entry)) {
  ws = khd->domain_ws[sched_domain];
  spin_lock_irq(&ws->wait.lock);
  sbitmap_del_wait_queue(wait);
  spin_unlock_irq(&ws->wait.lock);
 }

 return nr;
}
