
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * uv_sem_t ;


 int * CreateSemaphore (int *,unsigned int,int ,int *) ;
 int GetLastError () ;
 int INT_MAX ;
 int uv_translate_sys_error (int ) ;

int uv_sem_init(uv_sem_t* sem, unsigned int value) {
  *sem = CreateSemaphore(((void*)0), value, INT_MAX, ((void*)0));
  if (*sem == ((void*)0))
    return uv_translate_sys_error(GetLastError());
  else
    return 0;
}
