
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uv_req_t ;
struct TYPE_8__ {scalar_t__ time; int iocp; } ;
typedef TYPE_1__ uv_loop_t ;
typedef scalar_t__ uint64_t ;
typedef size_t ULONG ;
struct TYPE_9__ {scalar_t__ lpOverlapped; } ;
typedef TYPE_2__ OVERLAPPED_ENTRY ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetQueuedCompletionStatusEx (int ,TYPE_2__*,int ,size_t*,scalar_t__,int ) ;
 scalar_t__ WAIT_TIMEOUT ;
 int uv_fatal_error (scalar_t__,char*) ;
 int uv_insert_pending_req (TYPE_1__*,int *) ;
 int * uv_overlapped_to_req (scalar_t__) ;
 int uv_update_time (TYPE_1__*) ;

__attribute__((used)) static void uv__poll(uv_loop_t* loop, DWORD timeout) {
  BOOL success;
  uv_req_t* req;
  OVERLAPPED_ENTRY overlappeds[128];
  ULONG count;
  ULONG i;
  int repeat;
  uint64_t timeout_time;

  timeout_time = loop->time + timeout;

  for (repeat = 0; ; repeat++) {
    success = GetQueuedCompletionStatusEx(loop->iocp,
                                          overlappeds,
                                          ARRAY_SIZE(overlappeds),
                                          &count,
                                          timeout,
                                          FALSE);

    if (success) {
      for (i = 0; i < count; i++) {



        if (overlappeds[i].lpOverlapped) {
          req = uv_overlapped_to_req(overlappeds[i].lpOverlapped);
          uv_insert_pending_req(loop, req);
        }
      }




      uv_update_time(loop);
    } else if (GetLastError() != WAIT_TIMEOUT) {

      uv_fatal_error(GetLastError(), "GetQueuedCompletionStatusEx");
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
