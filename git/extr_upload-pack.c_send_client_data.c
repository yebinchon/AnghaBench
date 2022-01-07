
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int send_sideband (int,int,char const*,int ,scalar_t__) ;
 scalar_t__ use_sideband ;
 int write_or_die (int,char const*,int ) ;
 int xwrite (int,char const*,int ) ;

__attribute__((used)) static void send_client_data(int fd, const char *data, ssize_t sz)
{
 if (use_sideband) {
  send_sideband(1, fd, data, sz, use_sideband);
  return;
 }
 if (fd == 3)

  fd = 2;
 if (fd == 2) {

  xwrite(fd, data, sz);
  return;
 }
 write_or_die(fd, data, sz);
}
