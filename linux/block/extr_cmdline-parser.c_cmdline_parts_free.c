
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdline_parts {struct cmdline_parts* next_parts; } ;


 int free_subpart (struct cmdline_parts*) ;
 int kfree (struct cmdline_parts*) ;

void cmdline_parts_free(struct cmdline_parts **parts)
{
 struct cmdline_parts *next_parts;

 while (*parts) {
  next_parts = (*parts)->next_parts;
  free_subpart(*parts);
  kfree(*parts);
  *parts = next_parts;
 }
}
