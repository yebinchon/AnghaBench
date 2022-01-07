
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdline_subpart {struct cmdline_subpart* next_subpart; } ;
struct cmdline_parts {struct cmdline_subpart* subpart; } ;


 int kfree (struct cmdline_subpart*) ;

__attribute__((used)) static void free_subpart(struct cmdline_parts *parts)
{
 struct cmdline_subpart *subpart;

 while (parts->subpart) {
  subpart = parts->subpart;
  parts->subpart = subpart->next_subpart;
  kfree(subpart);
 }
}
