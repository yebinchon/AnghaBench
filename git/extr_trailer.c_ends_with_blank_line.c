
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int is_blank_line (char const*) ;
 scalar_t__ last_line (char const*,size_t) ;

__attribute__((used)) static int ends_with_blank_line(const char *buf, size_t len)
{
 ssize_t ll = last_line(buf, len);
 if (ll < 0)
  return 0;
 return is_blank_line(buf + ll);
}
