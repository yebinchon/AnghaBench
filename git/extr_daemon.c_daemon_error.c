
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int informative_errors ;
 int packet_write_fmt (int,char*,char const*,char const*) ;

__attribute__((used)) static int daemon_error(const char *dir, const char *msg)
{
 if (!informative_errors)
  msg = "access denied or repository not exported";
 packet_write_fmt(1, "ERR %s: %s", msg, dir);
 return -1;
}
