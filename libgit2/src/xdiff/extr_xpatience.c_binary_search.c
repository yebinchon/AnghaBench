
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {scalar_t__ line2; } ;



__attribute__((used)) static int binary_search(struct entry **sequence, int longest,
  struct entry *entry)
{
 int left = -1, right = longest;

 while (left + 1 < right) {
  int middle = left + (right - left) / 2;

  if (sequence[middle]->line2 > entry->line2)
   right = middle;
  else
   left = middle;
 }

 return left;
}
