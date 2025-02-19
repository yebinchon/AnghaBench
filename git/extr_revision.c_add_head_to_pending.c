
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int repo; } ;
struct object_id {int dummy; } ;
struct object {int dummy; } ;


 int add_pending_object (struct rev_info*,struct object*,char*) ;
 scalar_t__ get_oid (char*,struct object_id*) ;
 struct object* parse_object (int ,struct object_id*) ;

void add_head_to_pending(struct rev_info *revs)
{
 struct object_id oid;
 struct object *obj;
 if (get_oid("HEAD", &oid))
  return;
 obj = parse_object(revs->repo, &oid);
 if (!obj)
  return;
 add_pending_object(revs, obj, "HEAD");
}
