
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int type; } ;
struct atom_value {int dummy; } ;






 int die (char*,int) ;
 int grab_commit_values (struct atom_value*,int,struct object*) ;
 int grab_person (char*,struct atom_value*,int,void*) ;
 int grab_sub_body_contents (struct atom_value*,int,void*) ;
 int grab_tag_values (struct atom_value*,int,struct object*) ;

__attribute__((used)) static void grab_values(struct atom_value *val, int deref, struct object *obj, void *buf)
{
 switch (obj->type) {
 case 129:
  grab_tag_values(val, deref, obj);
  grab_sub_body_contents(val, deref, buf);
  grab_person("tagger", val, deref, buf);
  break;
 case 130:
  grab_commit_values(val, deref, obj);
  grab_sub_body_contents(val, deref, buf);
  grab_person("author", val, deref, buf);
  grab_person("committer", val, deref, buf);
  break;
 case 128:

  break;
 case 131:

  break;
 default:
  die("Eh?  Object of type %d?", obj->type);
 }
}
