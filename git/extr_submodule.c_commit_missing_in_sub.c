
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_COMMIT ;
 int oid_object_info (struct repository*,struct object_id const*,int *) ;

__attribute__((used)) static int commit_missing_in_sub(const struct object_id *oid, void *data)
{
 struct repository *subrepo = data;

 enum object_type type = oid_object_info(subrepo, oid, ((void*)0));

 return type != OBJ_COMMIT;
}
