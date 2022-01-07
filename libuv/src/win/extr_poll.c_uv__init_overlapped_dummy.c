
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hEvent; } ;
typedef int * HANDLE ;


 int * CreateEvent (int *,int ,int ,int *) ;
 int GetLastError () ;
 int TRUE ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__ overlapped_dummy_ ;
 int uv_fatal_error (int ,char*) ;

__attribute__((used)) static void uv__init_overlapped_dummy(void) {
  HANDLE event;

  event = CreateEvent(((void*)0), TRUE, TRUE, ((void*)0));
  if (event == ((void*)0))
    uv_fatal_error(GetLastError(), "CreateEvent");

  memset(&overlapped_dummy_, 0, sizeof overlapped_dummy_);
  overlapped_dummy_.hEvent = (HANDLE) ((uintptr_t) event | 1);
}
