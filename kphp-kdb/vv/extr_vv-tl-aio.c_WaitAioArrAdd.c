
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aio_connection {int dummy; } ;


 struct aio_connection** WaitAioArr ;
 int WaitAioArrPos ;

int WaitAioArrAdd (struct aio_connection *conn) {
  if (WaitAioArrPos < 99) {
    WaitAioArr[WaitAioArrPos ++] = conn;
    return 1;
  } else {
    return 0;
  }
}
