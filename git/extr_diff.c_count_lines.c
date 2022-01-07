
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int count_lines(const char *data, int size)
{
 int count, ch, completely_empty = 1, nl_just_seen = 0;
 count = 0;
 while (0 < size--) {
  ch = *data++;
  if (ch == '\n') {
   count++;
   nl_just_seen = 1;
   completely_empty = 0;
  }
  else {
   nl_just_seen = 0;
   completely_empty = 0;
  }
 }
 if (completely_empty)
  return 0;
 if (!nl_just_seen)
  count++;
 return count;
}
