
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct object {scalar_t__ type; } ;
struct commit {int dummy; } ;


 int ADVERTISED ;
 int COMMON ;
 scalar_t__ OBJ_COMMIT ;
 int POPPED ;
 int SEEN ;
 int clear_commit_marks (struct commit*,int) ;
 struct object* deref_tag (int ,int ,char const*,int ) ;
 int parse_object (int ,struct object_id const*) ;
 int the_repository ;

__attribute__((used)) static int clear_marks(const char *refname, const struct object_id *oid,
         int flag, void *cb_data)
{
 struct object *o = deref_tag(the_repository, parse_object(the_repository, oid), refname, 0);

 if (o && o->type == OBJ_COMMIT)
  clear_commit_marks((struct commit *)o,
       COMMON | ADVERTISED | SEEN | POPPED);
 return 0;
}
