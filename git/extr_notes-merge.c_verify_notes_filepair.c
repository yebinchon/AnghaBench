
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct diff_filepair {int status; TYPE_2__* one; TYPE_1__* two; } ;
struct TYPE_4__ {int path; int oid; int mode; } ;
struct TYPE_3__ {int path; int oid; int mode; } ;





 int assert (int) ;
 int is_null_oid (int *) ;
 int path_to_oid (int ,struct object_id*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int verify_notes_filepair(struct diff_filepair *p, struct object_id *oid)
{
 switch (p->status) {
 case 128:
  assert(p->one->mode == p->two->mode);
  assert(!is_null_oid(&p->one->oid));
  assert(!is_null_oid(&p->two->oid));
  break;
 case 130:
  assert(is_null_oid(&p->one->oid));
  break;
 case 129:
  assert(is_null_oid(&p->two->oid));
  break;
 default:
  return -1;
 }
 assert(!strcmp(p->one->path, p->two->path));
 return path_to_oid(p->one->path, oid);
}
