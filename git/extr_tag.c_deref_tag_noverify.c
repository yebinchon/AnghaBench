
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tag {struct object* tagged; } ;
struct object {scalar_t__ type; int oid; } ;


 scalar_t__ OBJ_TAG ;
 struct object* parse_object (int ,int *) ;
 int the_repository ;

struct object *deref_tag_noverify(struct object *o)
{
 while (o && o->type == OBJ_TAG) {
  o = parse_object(the_repository, &o->oid);
  if (o && o->type == OBJ_TAG && ((struct tag *)o)->tagged)
   o = ((struct tag *)o)->tagged;
  else
   o = ((void*)0);
 }
 return o;
}
