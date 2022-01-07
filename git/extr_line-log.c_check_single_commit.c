
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr; TYPE_1__* objects; } ;
struct rev_info {TYPE_2__ pending; int repo; } ;
struct object {int flags; scalar_t__ type; } ;
struct commit {int dummy; } ;
struct TYPE_3__ {int name; struct object* item; } ;


 scalar_t__ OBJ_COMMIT ;
 int UNINTERESTING ;
 struct object* deref_tag (int ,struct object*,int *,int ) ;
 int die (char*,...) ;

__attribute__((used)) static struct commit *check_single_commit(struct rev_info *revs)
{
 struct object *commit = ((void*)0);
 int found = -1;
 int i;

 for (i = 0; i < revs->pending.nr; i++) {
  struct object *obj = revs->pending.objects[i].item;
  if (obj->flags & UNINTERESTING)
   continue;
  obj = deref_tag(revs->repo, obj, ((void*)0), 0);
  if (obj->type != OBJ_COMMIT)
   die("Non commit %s?", revs->pending.objects[i].name);
  if (commit)
   die("More than one commit to dig from: %s and %s?",
       revs->pending.objects[i].name,
       revs->pending.objects[found].name);
  commit = obj;
  found = i;
 }

 if (!commit)
  die("No commit specified?");

 return (struct commit *) commit;
}
