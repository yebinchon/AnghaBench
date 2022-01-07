
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *get_nth_line(long line, unsigned long *ends, void *data)
{
 if (line == 0)
  return (char *)data;
 else
  return (char *)data + ends[line] + 1;
}
