
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct object {int dummy; } ;


 int OBJ_TREE ;
 struct object* parse_object (struct repository*,struct object_id const*) ;
 scalar_t__ repo_peel_to_type (struct repository*,int *,int ,struct object*,int ) ;
 struct repository* the_repository ;

struct tree *parse_tree_indirect(const struct object_id *oid)
{
 struct repository *r = the_repository;
 struct object *obj = parse_object(r, oid);
 return (struct tree *)repo_peel_to_type(r, ((void*)0), 0, obj, OBJ_TREE);
}
