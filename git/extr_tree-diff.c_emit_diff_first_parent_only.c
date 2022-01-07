
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct diff_options {int (* add_remove ) (struct diff_options*,int,unsigned int,struct object_id const*,int,int ,int ) ;int (* change ) (struct diff_options*,unsigned int,int,struct object_id*,struct object_id*,int,int,int ,int ,int ) ;} ;
struct combine_diff_path {int mode; int path; struct object_id oid; struct combine_diff_parent* parent; } ;
struct combine_diff_parent {unsigned int mode; struct object_id oid; } ;


 int stub1 (struct diff_options*,unsigned int,int,struct object_id*,struct object_id*,int,int,int ,int ,int ) ;
 int stub2 (struct diff_options*,int,unsigned int,struct object_id const*,int,int ,int ) ;

__attribute__((used)) static int emit_diff_first_parent_only(struct diff_options *opt, struct combine_diff_path *p)
{
 struct combine_diff_parent *p0 = &p->parent[0];
 if (p->mode && p0->mode) {
  opt->change(opt, p0->mode, p->mode, &p0->oid, &p->oid,
   1, 1, p->path, 0, 0);
 }
 else {
  const struct object_id *oid;
  unsigned int mode;
  int addremove;

  if (p->mode) {
   addremove = '+';
   oid = &p->oid;
   mode = p->mode;
  } else {
   addremove = '-';
   oid = &p0->oid;
   mode = p0->mode;
  }

  opt->add_remove(opt, addremove, mode, oid, 1, p->path, 0);
 }

 return 0;
}
