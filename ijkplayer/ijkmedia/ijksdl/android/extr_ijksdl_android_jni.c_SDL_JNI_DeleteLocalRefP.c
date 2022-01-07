
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * jobject ;
struct TYPE_4__ {int (* DeleteLocalRef ) (TYPE_1__**,int *) ;} ;
typedef TYPE_1__* JNIEnv ;


 int stub1 (TYPE_1__**,int *) ;

void SDL_JNI_DeleteLocalRefP(JNIEnv *env, jobject *obj_ptr)
{
    if (!obj_ptr || !*obj_ptr)
        return;

    (*env)->DeleteLocalRef(env, *obj_ptr);
    *obj_ptr = ((void*)0);
}
