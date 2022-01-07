
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_thread {int (* function ) (struct drbd_thread*) ;char const* name; int * connection; struct drbd_resource* resource; int t_state; int * task; int t_lock; } ;
struct drbd_resource {int dummy; } ;


 int NONE ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void drbd_thread_init(struct drbd_resource *resource, struct drbd_thread *thi,
        int (*func) (struct drbd_thread *), const char *name)
{
 spin_lock_init(&thi->t_lock);
 thi->task = ((void*)0);
 thi->t_state = NONE;
 thi->function = func;
 thi->resource = resource;
 thi->connection = ((void*)0);
 thi->name = name;
}
