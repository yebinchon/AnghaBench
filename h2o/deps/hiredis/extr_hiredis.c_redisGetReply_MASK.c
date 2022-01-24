#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; } ;
typedef  TYPE_1__ redisContext ;

/* Variables and functions */
 int REDIS_BLOCK ; 
 scalar_t__ REDIS_ERR ; 
 int REDIS_OK ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,void**) ; 

int FUNC3(redisContext *c, void **reply) {
    int wdone = 0;
    void *aux = NULL;

    /* Try to read pending replies */
    if (FUNC2(c,&aux) == REDIS_ERR)
        return REDIS_ERR;

    /* For the blocking context, flush output buffer and read reply */
    if (aux == NULL && c->flags & REDIS_BLOCK) {
        /* Write until done */
        do {
            if (FUNC1(c,&wdone) == REDIS_ERR)
                return REDIS_ERR;
        } while (!wdone);

        /* Read until there is a reply */
        do {
            if (FUNC0(c) == REDIS_ERR)
                return REDIS_ERR;
            if (FUNC2(c,&aux) == REDIS_ERR)
                return REDIS_ERR;
        } while (aux == NULL);
    }

    /* Set reply object */
    if (reply != NULL) *reply = aux;
    return REDIS_OK;
}