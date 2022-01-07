
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ starts_with (char const*,char*) ;
 int strspn (char const*,char*) ;

__attribute__((used)) static int is_mboxrd_from(const char *line, int len)
{





 return len > 4 && starts_with(line + strspn(line, ">"), "From ");
}
