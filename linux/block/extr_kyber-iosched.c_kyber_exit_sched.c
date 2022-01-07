
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kyber_queue_data {int cpu_latency; int * domain_tokens; int timer; } ;
struct elevator_queue {struct kyber_queue_data* elevator_data; } ;


 int KYBER_NUM_DOMAINS ;
 int del_timer_sync (int *) ;
 int free_percpu (int ) ;
 int kfree (struct kyber_queue_data*) ;
 int sbitmap_queue_free (int *) ;

__attribute__((used)) static void kyber_exit_sched(struct elevator_queue *e)
{
 struct kyber_queue_data *kqd = e->elevator_data;
 int i;

 del_timer_sync(&kqd->timer);

 for (i = 0; i < KYBER_NUM_DOMAINS; i++)
  sbitmap_queue_free(&kqd->domain_tokens[i]);
 free_percpu(kqd->cpu_latency);
 kfree(kqd);
}
