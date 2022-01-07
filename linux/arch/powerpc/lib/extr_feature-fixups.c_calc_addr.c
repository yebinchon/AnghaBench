
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fixup_entry {int dummy; } ;



__attribute__((used)) static unsigned int *calc_addr(struct fixup_entry *fcur, long offset)
{





 return (unsigned int *)((unsigned long)fcur + offset);
}
