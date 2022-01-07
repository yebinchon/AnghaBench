
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct component_match_array {int data; int (* release ) (struct device*,int ) ;} ;
struct component_match {unsigned int num; struct component_match_array* compare; } ;


 int kfree (struct component_match_array*) ;
 int stub1 (struct device*,int ) ;

__attribute__((used)) static void component_match_release(struct device *master,
 struct component_match *match)
{
 unsigned int i;

 for (i = 0; i < match->num; i++) {
  struct component_match_array *mc = &match->compare[i];

  if (mc->release)
   mc->release(master, mc->data);
 }

 kfree(match->compare);
}
