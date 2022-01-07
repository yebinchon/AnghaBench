
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; struct io_context* io_context; } ;
struct io_context {int release_work; int icq_list; int icq_tree; int lock; int active_ref; int nr_tasks; int refcount; } ;
typedef int gfp_t ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_RADIX_TREE (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int PF_EXITING ;
 int __GFP_ZERO ;
 int atomic_long_set (int *,int) ;
 int atomic_set (int *,int) ;
 struct task_struct* current ;
 int ioc_release_fn ;
 int iocontext_cachep ;
 struct io_context* kmem_cache_alloc_node (int ,int,int) ;
 int kmem_cache_free (int ,struct io_context*) ;
 int spin_lock_init (int *) ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;
 scalar_t__ unlikely (int) ;

int create_task_io_context(struct task_struct *task, gfp_t gfp_flags, int node)
{
 struct io_context *ioc;
 int ret;

 ioc = kmem_cache_alloc_node(iocontext_cachep, gfp_flags | __GFP_ZERO,
        node);
 if (unlikely(!ioc))
  return -ENOMEM;


 atomic_long_set(&ioc->refcount, 1);
 atomic_set(&ioc->nr_tasks, 1);
 atomic_set(&ioc->active_ref, 1);
 spin_lock_init(&ioc->lock);
 INIT_RADIX_TREE(&ioc->icq_tree, GFP_ATOMIC);
 INIT_HLIST_HEAD(&ioc->icq_list);
 INIT_WORK(&ioc->release_work, ioc_release_fn);
 task_lock(task);
 if (!task->io_context &&
     (task == current || !(task->flags & PF_EXITING)))
  task->io_context = ioc;
 else
  kmem_cache_free(iocontext_cachep, ioc);

 ret = task->io_context ? 0 : -EBUSY;

 task_unlock(task);

 return ret;
}
