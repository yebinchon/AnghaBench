
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tips {scalar_t__ nr; struct commit** tip; int alloc; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;


 int ALLOC_GROW (struct commit**,scalar_t__,int ) ;
 int TMP_MARK ;
 scalar_t__ is_null_oid (struct object_id const*) ;
 struct commit* lookup_commit_reference_gently (int ,struct object_id const*,int) ;
 int the_repository ;

__attribute__((used)) static void add_to_tips(struct tips *tips, const struct object_id *oid)
{
 struct commit *commit;

 if (is_null_oid(oid))
  return;
 commit = lookup_commit_reference_gently(the_repository, oid, 1);
 if (!commit || (commit->object.flags & TMP_MARK))
  return;
 commit->object.flags |= TMP_MARK;
 ALLOC_GROW(tips->tip, tips->nr + 1, tips->alloc);
 tips->tip[tips->nr++] = commit;
}
