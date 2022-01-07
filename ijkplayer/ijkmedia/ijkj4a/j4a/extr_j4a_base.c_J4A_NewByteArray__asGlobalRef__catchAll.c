
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int jsize ;
typedef int * jbyteArray ;
struct TYPE_7__ {int * (* NewGlobalRef ) (TYPE_1__**,int *) ;int * (* NewByteArray ) (TYPE_1__**,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 int J4A_DeleteLocalRef__p (TYPE_1__**,int **) ;
 scalar_t__ J4A_ExceptionCheck__catchAll (TYPE_1__**) ;
 int * stub1 (TYPE_1__**,int ) ;
 int * stub2 (TYPE_1__**,int *) ;

jbyteArray J4A_NewByteArray__asGlobalRef__catchAll(JNIEnv *env, jsize capacity)
{
    jbyteArray local = (*env)->NewByteArray(env, capacity);
    if (J4A_ExceptionCheck__catchAll(env) || !local)
        return ((void*)0);

    jbyteArray global = (*env)->NewGlobalRef(env, local);
    J4A_DeleteLocalRef__p(env, &local);
    return global;
}
