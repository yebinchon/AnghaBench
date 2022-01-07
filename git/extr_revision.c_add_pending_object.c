
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int dummy; } ;
struct object {int dummy; } ;


 int S_IFINVALID ;
 int add_pending_object_with_mode (struct rev_info*,struct object*,char const*,int ) ;

void add_pending_object(struct rev_info *revs,
   struct object *obj, const char *name)
{
 add_pending_object_with_mode(revs, obj, name, S_IFINVALID);
}
