
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchrnul (char const*,char) ;
 char const* xmemdupz (char const*,int) ;

__attribute__((used)) static const char *copy_line(const char *buf)
{
 const char *eol = strchrnul(buf, '\n');
 return xmemdupz(buf, eol - buf);
}
