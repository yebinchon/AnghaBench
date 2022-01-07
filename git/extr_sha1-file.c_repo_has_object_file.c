
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;


 int repo_has_object_file_with_flags (struct repository*,struct object_id const*,int ) ;

int repo_has_object_file(struct repository *r,
    const struct object_id *oid)
{
 return repo_has_object_file_with_flags(r, oid, 0);
}
