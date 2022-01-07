
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_async_request {int tfm; } ;
struct cryptd_queue {int cpu_queue; } ;
struct cryptd_cpu_queue {int work; int queue; } ;
typedef int refcount_t ;


 int ENOSPC ;
 int cryptd_wq ;
 int crypto_enqueue_request (int *,struct crypto_async_request*) ;
 int * crypto_tfm_ctx (int ) ;
 int get_cpu () ;
 int put_cpu () ;
 int queue_work_on (int,int ,int *) ;
 int refcount_inc (int *) ;
 int refcount_read (int *) ;
 struct cryptd_cpu_queue* this_cpu_ptr (int ) ;

__attribute__((used)) static int cryptd_enqueue_request(struct cryptd_queue *queue,
      struct crypto_async_request *request)
{
 int cpu, err;
 struct cryptd_cpu_queue *cpu_queue;
 refcount_t *refcnt;

 cpu = get_cpu();
 cpu_queue = this_cpu_ptr(queue->cpu_queue);
 err = crypto_enqueue_request(&cpu_queue->queue, request);

 refcnt = crypto_tfm_ctx(request->tfm);

 if (err == -ENOSPC)
  goto out_put_cpu;

 queue_work_on(cpu, cryptd_wq, &cpu_queue->work);

 if (!refcount_read(refcnt))
  goto out_put_cpu;

 refcount_inc(refcnt);

out_put_cpu:
 put_cpu();

 return err;
}
