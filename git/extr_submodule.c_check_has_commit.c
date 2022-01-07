
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct has_commit_data {int path; int result; int repo; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;




 int _ (char*) ;
 int die (int ,int ,int ,int ) ;
 int oid_object_info (int ,struct object_id const*,int *) ;
 int oid_to_hex (struct object_id const*) ;
 int type_name (int) ;

__attribute__((used)) static int check_has_commit(const struct object_id *oid, void *data)
{
 struct has_commit_data *cb = data;

 enum object_type type = oid_object_info(cb->repo, oid, ((void*)0));

 switch (type) {
 case 128:
  return 0;
 case 129:




  cb->result = 0;
  return 0;
 default:
  die(_("submodule entry '%s' (%s) is a %s, not a commit"),
      cb->path, oid_to_hex(oid), type_name(type));
 }
}
