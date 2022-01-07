
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDL_JNI_ThreadDestroyed ;
 int g_thread_key ;
 int pthread_key_create (int *,int ) ;

__attribute__((used)) static void make_thread_key()
{
    pthread_key_create(&g_thread_key, SDL_JNI_ThreadDestroyed);
}
