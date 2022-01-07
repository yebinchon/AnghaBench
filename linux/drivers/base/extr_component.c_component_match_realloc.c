
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct component_match_array {int dummy; } ;
struct component_match {size_t alloc; struct component_match_array* compare; int num; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct component_match_array*) ;
 struct component_match_array* kmalloc_array (size_t,int,int ) ;
 int memcpy (struct component_match_array*,struct component_match_array*,int) ;
 int min (int ,size_t) ;

__attribute__((used)) static int component_match_realloc(struct device *dev,
 struct component_match *match, size_t num)
{
 struct component_match_array *new;

 if (match->alloc == num)
  return 0;

 new = kmalloc_array(num, sizeof(*new), GFP_KERNEL);
 if (!new)
  return -ENOMEM;

 if (match->compare) {
  memcpy(new, match->compare, sizeof(*new) *
         min(match->num, num));
  kfree(match->compare);
 }
 match->compare = new;
 match->alloc = num;

 return 0;
}
