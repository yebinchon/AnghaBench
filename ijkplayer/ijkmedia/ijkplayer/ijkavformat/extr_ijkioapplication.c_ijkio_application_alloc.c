
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* opaque; } ;
typedef TYPE_1__ IjkIOApplicationContext ;


 TYPE_1__* calloc (int,int) ;

int ijkio_application_alloc(IjkIOApplicationContext **ph, void *opaque) {
    IjkIOApplicationContext *h = ((void*)0);

    h = calloc(1, sizeof(IjkIOApplicationContext));
    if (!h)
        return -1;

    h->opaque = opaque;

    *ph = h;
    return 0;
}
