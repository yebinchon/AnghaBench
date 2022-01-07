
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uv_req_t ;
struct TYPE_5__ {scalar_t__ time; int iocp; } ;
typedef TYPE_1__ uv_loop_t ;
typedef scalar_t__ uint64_t ;
typedef int ULONG_PTR ;
typedef int OVERLAPPED ;
typedef scalar_t__ DWORD ;


 scalar_t__ GetLastError () ;
 int GetQueuedCompletionStatus (int ,scalar_t__*,int *,int **,scalar_t__) ;
 scalar_t__ WAIT_TIMEOUT ;
 int uv_fatal_error (scalar_t__,char*) ;
 int uv_insert_pending_req (TYPE_1__*,int *) ;
 int * uv_overlapped_to_req (int *) ;
 int uv_update_time (TYPE_1__*) ;

__attribute__((used)) static void uv__poll_wine(uv_loop_t* loop, DWORD timeout) {
  DWORD bytes;
  ULONG_PTR key;
  OVERLAPPED* overlapped;
  uv_req_t* req;
  int repeat;
  uint64_t timeout_time;

  timeout_time = loop->time + timeout;

  for (repeat = 0; ; repeat++) {
    GetQueuedCompletionStatus(loop->iocp,
                              &bytes,
                              &key,
                              &overlapped,
                              timeout);

    if (overlapped) {

      req = uv_overlapped_to_req(overlapped);
      uv_insert_pending_req(loop, req);




      uv_update_time(loop);
    } else if (GetLastError() != WAIT_TIMEOUT) {

      uv_fatal_error(GetLastError(), "GetQueuedCompletionStatus");
    } else if (timeout > 0) {



      uv_update_time(loop);
      if (timeout_time > loop->time) {
        timeout = (DWORD)(timeout_time - loop->time);






        timeout += repeat ? (1 << (repeat - 1)) : 0;
        continue;
      }
    }
    break;
  }
}
