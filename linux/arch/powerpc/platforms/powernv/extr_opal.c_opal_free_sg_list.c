
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct opal_sg_list {int next; } ;


 struct opal_sg_list* __va (scalar_t__) ;
 scalar_t__ be64_to_cpu (int ) ;
 int kfree (struct opal_sg_list*) ;

void opal_free_sg_list(struct opal_sg_list *sg)
{
 while (sg) {
  uint64_t next = be64_to_cpu(sg->next);

  kfree(sg);

  if (next)
   sg = __va(next);
  else
   sg = ((void*)0);
 }
}
