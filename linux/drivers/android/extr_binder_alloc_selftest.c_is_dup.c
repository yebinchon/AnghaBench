
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool is_dup(int *seq, int index, int val)
{
 int i;

 for (i = 0; i < index; i++) {
  if (seq[i] == val)
   return 1;
 }
 return 0;
}
