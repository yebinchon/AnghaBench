
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct userdiff_driver {int dummy; } ;
struct index_state {int dummy; } ;
struct attr_check {TYPE_1__* items; } ;
struct TYPE_2__ {int value; } ;


 scalar_t__ ATTR_FALSE (int ) ;
 scalar_t__ ATTR_TRUE (int ) ;
 scalar_t__ ATTR_UNSET (int ) ;
 struct attr_check* attr_check_initl (char*,int *) ;
 struct userdiff_driver driver_false ;
 struct userdiff_driver driver_true ;
 int git_check_attr (struct index_state*,char const*,struct attr_check*) ;
 struct userdiff_driver* userdiff_find_by_name (int ) ;

struct userdiff_driver *userdiff_find_by_path(struct index_state *istate,
           const char *path)
{
 static struct attr_check *check;

 if (!check)
  check = attr_check_initl("diff", ((void*)0));
 if (!path)
  return ((void*)0);
 git_check_attr(istate, path, check);

 if (ATTR_TRUE(check->items[0].value))
  return &driver_true;
 if (ATTR_FALSE(check->items[0].value))
  return &driver_false;
 if (ATTR_UNSET(check->items[0].value))
  return ((void*)0);
 return userdiff_find_by_name(check->items[0].value);
}
