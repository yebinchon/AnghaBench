
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct component_match {int num; int alloc; TYPE_1__* compare; } ;
struct TYPE_2__ {int (* compare ) (struct device*,void*) ;int (* compare_typed ) (struct device*,int,void*) ;void (* release ) (struct device*,void*) ;int * component; void* data; } ;


 int ENOMEM ;
 struct component_match* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct component_match*) ;
 int component_match_realloc (struct device*,struct component_match*,size_t) ;
 int devm_component_match_release ;
 int devres_add (struct device*,struct component_match*) ;
 struct component_match* devres_alloc (int ,int,int ) ;

__attribute__((used)) static void __component_match_add(struct device *master,
 struct component_match **matchptr,
 void (*release)(struct device *, void *),
 int (*compare)(struct device *, void *),
 int (*compare_typed)(struct device *, int, void *),
 void *compare_data)
{
 struct component_match *match = *matchptr;

 if (IS_ERR(match))
  return;

 if (!match) {
  match = devres_alloc(devm_component_match_release,
         sizeof(*match), GFP_KERNEL);
  if (!match) {
   *matchptr = ERR_PTR(-ENOMEM);
   return;
  }

  devres_add(master, match);

  *matchptr = match;
 }

 if (match->num == match->alloc) {
  size_t new_size = match->alloc + 16;
  int ret;

  ret = component_match_realloc(master, match, new_size);
  if (ret) {
   *matchptr = ERR_PTR(ret);
   return;
  }
 }

 match->compare[match->num].compare = compare;
 match->compare[match->num].compare_typed = compare_typed;
 match->compare[match->num].release = release;
 match->compare[match->num].data = compare_data;
 match->compare[match->num].component = ((void*)0);
 match->num++;
}
