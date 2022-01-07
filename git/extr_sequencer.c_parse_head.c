
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 int _ (char*) ;
 int error (int ) ;
 scalar_t__ get_oid (char*,struct object_id*) ;
 struct commit* lookup_commit_reference (struct repository*,struct object_id*) ;
 int oid_to_hex (struct object_id*) ;
 int oideq (struct object_id*,int *) ;
 scalar_t__ parse_commit (struct commit*) ;
 int warning (int ,int ) ;

__attribute__((used)) static int parse_head(struct repository *r, struct commit **head)
{
 struct commit *current_head;
 struct object_id oid;

 if (get_oid("HEAD", &oid)) {
  current_head = ((void*)0);
 } else {
  current_head = lookup_commit_reference(r, &oid);
  if (!current_head)
   return error(_("could not parse HEAD"));
  if (!oideq(&oid, &current_head->object.oid)) {
   warning(_("HEAD %s is not a commit!"),
    oid_to_hex(&oid));
  }
  if (parse_commit(current_head))
   return error(_("could not parse HEAD commit"));
 }
 *head = current_head;

 return 0;
}
