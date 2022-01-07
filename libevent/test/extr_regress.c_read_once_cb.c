
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;
typedef int buf ;


 int TEST1 ;
 scalar_t__ called ;
 int * pair ;
 int read (int ,char*,int) ;
 scalar_t__ strlen (int ) ;
 int test_ok ;
 int tt_fail_perror (char*) ;
 scalar_t__ write (int ,int ,scalar_t__) ;

__attribute__((used)) static void
read_once_cb(evutil_socket_t fd, short event, void *arg)
{
 char buf[256];
 int len;

 len = read(fd, buf, sizeof(buf));

 if (called) {
  test_ok = 0;
 } else if (len) {

  if (write(pair[0], TEST1, strlen(TEST1)+1) < 0) {
   tt_fail_perror("write");
   test_ok = 0;
  } else {
   test_ok = 1;
  }
 }

 called++;
}
