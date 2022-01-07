
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idx_entry {scalar_t__ offset; } ;



__attribute__((used)) static int compare_entries(const void *e1, const void *e2)
{
 const struct idx_entry *entry1 = e1;
 const struct idx_entry *entry2 = e2;
 if (entry1->offset < entry2->offset)
  return -1;
 if (entry1->offset > entry2->offset)
  return 1;
 return 0;
}
