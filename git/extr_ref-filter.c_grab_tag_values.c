
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tag {TYPE_1__* tagged; int tag; } ;
struct object {int dummy; } ;
struct atom_value {void* s; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {int oid; int type; } ;


 int oid_to_hex (int *) ;
 int strcmp (char const*,char*) ;
 int type_name (int ) ;
 TYPE_2__* used_atom ;
 int used_atom_cnt ;
 void* xstrdup (int ) ;

__attribute__((used)) static void grab_tag_values(struct atom_value *val, int deref, struct object *obj)
{
 int i;
 struct tag *tag = (struct tag *) obj;

 for (i = 0; i < used_atom_cnt; i++) {
  const char *name = used_atom[i].name;
  struct atom_value *v = &val[i];
  if (!!deref != (*name == '*'))
   continue;
  if (deref)
   name++;
  if (!strcmp(name, "tag"))
   v->s = xstrdup(tag->tag);
  else if (!strcmp(name, "type") && tag->tagged)
   v->s = xstrdup(type_name(tag->tagged->type));
  else if (!strcmp(name, "object") && tag->tagged)
   v->s = xstrdup(oid_to_hex(&tag->tagged->oid));
 }
}
