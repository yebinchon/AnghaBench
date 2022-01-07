
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ran; int event; } ;
typedef TYPE_1__ uv_once_t ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateEvent (int *,int,int ,int *) ;
 int GetLastError () ;
 int INFINITE ;
 scalar_t__ InterlockedCompareExchangePointer (int *,scalar_t__,int *) ;
 scalar_t__ SetEvent (scalar_t__) ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (scalar_t__,int ) ;
 int assert (int) ;
 int uv_fatal_error (int ,char*) ;

__attribute__((used)) static void uv__once_inner(uv_once_t* guard, void (*callback)(void)) {
  DWORD result;
  HANDLE existing_event, created_event;

  created_event = CreateEvent(((void*)0), 1, 0, ((void*)0));
  if (created_event == 0) {

    uv_fatal_error(GetLastError(), "CreateEvent");
  }

  existing_event = InterlockedCompareExchangePointer(&guard->event,
                                                     created_event,
                                                     ((void*)0));

  if (existing_event == ((void*)0)) {

    callback();

    result = SetEvent(created_event);
    assert(result);
    guard->ran = 1;

  } else {


    CloseHandle(created_event);
    result = WaitForSingleObject(existing_event, INFINITE);
    assert(result == WAIT_OBJECT_0);
  }
}
