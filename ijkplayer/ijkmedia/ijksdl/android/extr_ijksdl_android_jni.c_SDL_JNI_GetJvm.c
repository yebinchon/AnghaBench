
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JavaVM ;


 int * g_jvm ;

JavaVM *SDL_JNI_GetJvm()
{
    return g_jvm;
}
