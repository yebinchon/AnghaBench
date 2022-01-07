
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct ref {char* name; struct object_id old_oid; } ;
struct commit {int dummy; } ;


 int in_merge_bases (struct commit*,struct commit*) ;
 struct commit* lookup_commit_or_die (struct object_id*,char*) ;

__attribute__((used)) static int verify_merge_base(struct object_id *head_oid, struct ref *remote)
{
 struct commit *head = lookup_commit_or_die(head_oid, "HEAD");
 struct commit *branch = lookup_commit_or_die(&remote->old_oid,
           remote->name);

 return in_merge_bases(branch, head);
}
