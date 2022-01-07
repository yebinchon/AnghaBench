
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ignore_non_trailer (char const*,size_t) ;

__attribute__((used)) static size_t find_trailer_end(const char *buf, size_t len)
{
 return len - ignore_non_trailer(buf, len);
}
