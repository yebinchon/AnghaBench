
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * jobject ;
struct TYPE_5__ {int jbuffer_capacity; int * jbuffer; } ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef int JNIEnv ;
typedef TYPE_1__ IjkURLContext ;
typedef TYPE_2__ IjkIOAndroidioContext ;


 int FFMAX (int,int) ;
 int J4A_DeleteGlobalRef__p (int *,int **) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (int *) ;
 int * J4A_NewByteArray__asGlobalRef__catchAll (int *,int) ;

__attribute__((used)) static jobject jbuffer_grow(JNIEnv *env, IjkURLContext *h, int new_capacity) {
    IjkIOAndroidioContext *c = h->priv_data;
    if (!c)
        return ((void*)0);

    if (c->jbuffer && c->jbuffer_capacity >= new_capacity)
        return c->jbuffer;

    new_capacity = FFMAX(new_capacity, c->jbuffer_capacity * 2);

    J4A_DeleteGlobalRef__p(env, &c->jbuffer);
    c->jbuffer_capacity = 0;

    c->jbuffer = J4A_NewByteArray__asGlobalRef__catchAll(env, new_capacity);
    if (J4A_ExceptionCheck__catchAll(env) || !c->jbuffer) {
        c->jbuffer = ((void*)0);
        return ((void*)0);
    }

    c->jbuffer_capacity = new_capacity;
    return c->jbuffer;
}
