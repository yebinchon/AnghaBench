
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uv_thread_t ;


 int CloseHandle (scalar_t__) ;
 int GetLastError () ;
 int INFINITE ;
 int MemoryBarrier () ;
 scalar_t__ WaitForSingleObject (scalar_t__,int ) ;
 int uv_translate_sys_error (int ) ;

int uv_thread_join(uv_thread_t *tid) {
  if (WaitForSingleObject(*tid, INFINITE))
    return uv_translate_sys_error(GetLastError());
  else {
    CloseHandle(*tid);
    *tid = 0;
    MemoryBarrier();
    return 0;
  }
}
