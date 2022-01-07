
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sighand {int refcount; int lock; } ;


 int lock_init (int *) ;
 struct sighand* malloc (int) ;
 int memset (struct sighand*,int ,int) ;

struct sighand *sighand_new() {
    struct sighand *sighand = malloc(sizeof(struct sighand));
    if (sighand == ((void*)0))
        return ((void*)0);
    memset(sighand, 0, sizeof(struct sighand));
    sighand->refcount = 1;
    lock_init(&sighand->lock);
    return sighand;
}
