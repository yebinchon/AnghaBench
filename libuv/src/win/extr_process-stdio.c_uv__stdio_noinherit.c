
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef int BYTE ;


 int CHILD_STDIO_COUNT (int *) ;
 scalar_t__ CHILD_STDIO_HANDLE (int *,int) ;
 int HANDLE_FLAG_INHERIT ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int SetHandleInformation (scalar_t__,int ,int ) ;

void uv__stdio_noinherit(BYTE* buffer) {
  int i, count;

  count = CHILD_STDIO_COUNT(buffer);
  for (i = 0; i < count; i++) {
    HANDLE handle = CHILD_STDIO_HANDLE(buffer, i);
    if (handle != INVALID_HANDLE_VALUE) {
      SetHandleInformation(handle, HANDLE_FLAG_INHERIT, 0);
    }
  }
}
