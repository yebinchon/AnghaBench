
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex {scalar_t__ refcount; int chain; int cond; } ;


 int cond_destroy (int *) ;
 int free (struct futex*) ;
 int futex_lock ;
 int list_remove (int *) ;
 int unlock (int *) ;

__attribute__((used)) static void futex_put(struct futex *futex) {
    if (--futex->refcount == 0) {
        cond_destroy(&futex->cond);
        list_remove(&futex->chain);
        free(futex);
    }
    unlock(&futex_lock);
}
