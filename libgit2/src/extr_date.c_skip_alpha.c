
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalpha (char const) ;

__attribute__((used)) static int skip_alpha(const char *date)
{
 int i = 0;
 do {
  i++;
 } while (isalpha(date[i]));
 return i;
}
