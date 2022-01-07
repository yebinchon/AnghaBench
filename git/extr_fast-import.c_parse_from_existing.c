
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* versions; } ;
struct branch {int oid; TYPE_1__ branch_tree; } ;
struct TYPE_4__ {int oid; } ;


 int commit_type ;
 int free (char*) ;
 scalar_t__ is_null_oid (int *) ;
 int oidclr (int *) ;
 int parse_from_commit (struct branch*,char*,unsigned long) ;
 char* read_object_with_reference (int ,int *,int ,unsigned long*,int *) ;
 int the_repository ;

__attribute__((used)) static void parse_from_existing(struct branch *b)
{
 if (is_null_oid(&b->oid)) {
  oidclr(&b->branch_tree.versions[0].oid);
  oidclr(&b->branch_tree.versions[1].oid);
 } else {
  unsigned long size;
  char *buf;

  buf = read_object_with_reference(the_repository,
       &b->oid, commit_type, &size,
       &b->oid);
  parse_from_commit(b, buf, size);
  free(buf);
 }
}
