
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int process; } ;
typedef TYPE_1__ process_info_t ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 int ASSERT (int) ;
 scalar_t__ INFINITE ;
 int MAXIMUM_WAIT_OBJECTS ;
 int TRUE ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WAIT_TIMEOUT ;
 scalar_t__ WaitForMultipleObjects (int,int *,int ,scalar_t__) ;

int process_wait(process_info_t *vec, int n, int timeout) {
  int i;
  HANDLE handles[MAXIMUM_WAIT_OBJECTS];
  DWORD timeout_api, result;


  if (n == 0)
    return 0;

  ASSERT(n <= MAXIMUM_WAIT_OBJECTS);

  for (i = 0; i < n; i++)
    handles[i] = vec[i].process;

  if (timeout >= 0) {
    timeout_api = (DWORD)timeout;
  } else {
    timeout_api = INFINITE;
  }

  result = WaitForMultipleObjects(n, handles, TRUE, timeout_api);

  if (result < WAIT_OBJECT_0 + n) {

    return 0;
  }
  if (result == WAIT_TIMEOUT) {
    return -2;
  }
  return -1;
}
