
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;
typedef int * HANDLE ;


 int DUPLICATE_SAME_ACCESS ;
 int DuplicateHandle (int *,int *,int *,int **,int ,int ,int ) ;
 int ERROR_INVALID_HANDLE ;
 int * GetCurrentProcess () ;
 int GetLastError () ;
 int * INVALID_HANDLE_VALUE ;
 int TRUE ;

__attribute__((used)) static int uv__duplicate_handle(uv_loop_t* loop, HANDLE handle, HANDLE* dup) {
  HANDLE current_process;







  if (handle == INVALID_HANDLE_VALUE ||
      handle == ((void*)0) ||
      handle == (HANDLE) -2) {
    *dup = INVALID_HANDLE_VALUE;
    return ERROR_INVALID_HANDLE;
  }

  current_process = GetCurrentProcess();

  if (!DuplicateHandle(current_process,
                       handle,
                       current_process,
                       dup,
                       0,
                       TRUE,
                       DUPLICATE_SAME_ACCESS)) {
    *dup = INVALID_HANDLE_VALUE;
    return GetLastError();
  }

  return 0;
}
