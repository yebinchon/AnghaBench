
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int dummy; } ;
struct object {int dummy; } ;


 int add_pending_object_with_path (struct rev_info*,struct object*,char const*,unsigned int,int *) ;

__attribute__((used)) static void add_pending_object_with_mode(struct rev_info *revs,
      struct object *obj,
      const char *name, unsigned mode)
{
 add_pending_object_with_path(revs, obj, name, mode, ((void*)0));
}
