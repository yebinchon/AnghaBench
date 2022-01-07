
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_one_line(const char *msg)
{
 int ret = 0;

 for (;;) {
  char c = *msg++;
  if (!c)
   break;
  ret++;
  if (c == '\n')
   break;
 }
 return ret;
}
