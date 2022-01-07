
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unix_abstract {scalar_t__ refcount; int links; } ;


 int free (struct unix_abstract*) ;
 int list_remove (int *) ;
 int lock (int *) ;
 int unix_abstract_lock ;
 int unlock (int *) ;

__attribute__((used)) static void unix_abstract_release(struct unix_abstract *name) {
    lock(&unix_abstract_lock);
    if (--name->refcount == 0) {
        list_remove(&name->links);
        free(name);
    }
    unlock(&unix_abstract_lock);
}
