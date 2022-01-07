
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ _refcnt; int fd; int _lru; } ;
typedef TYPE_1__ h2o_filecache_ref_t ;


 int assert (int) ;
 int close (int) ;
 int free (TYPE_1__*) ;
 int h2o_linklist_is_linked (int *) ;

void h2o_filecache_close_file(h2o_filecache_ref_t *ref)
{
    if (--ref->_refcnt != 0)
        return;
    assert(!h2o_linklist_is_linked(&ref->_lru));
    if (ref->fd != -1) {
        close(ref->fd);
        ref->fd = -1;
    }
    free(ref);
}
