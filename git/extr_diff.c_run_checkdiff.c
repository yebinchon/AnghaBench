
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct diff_options {TYPE_1__* repo; scalar_t__ prefix_length; } ;
struct diff_filepair {TYPE_2__* two; TYPE_2__* one; } ;
struct TYPE_6__ {char* path; } ;
struct TYPE_5__ {int index; } ;


 scalar_t__ DIFF_PAIR_UNMERGED (struct diff_filepair*) ;
 int builtin_checkdiff (char const*,char const*,char const*,TYPE_2__*,TYPE_2__*,struct diff_options*) ;
 int diff_fill_oid_info (TYPE_2__*,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strip_prefix (scalar_t__,char const**,char const**) ;

__attribute__((used)) static void run_checkdiff(struct diff_filepair *p, struct diff_options *o)
{
 const char *name;
 const char *other;
 const char *attr_path;

 if (DIFF_PAIR_UNMERGED(p)) {

  return;
 }

 name = p->one->path;
 other = (strcmp(name, p->two->path) ? p->two->path : ((void*)0));
 attr_path = other ? other : name;

 if (o->prefix_length)
  strip_prefix(o->prefix_length, &name, &other);

 diff_fill_oid_info(p->one, o->repo->index);
 diff_fill_oid_info(p->two, o->repo->index);

 builtin_checkdiff(name, other, attr_path, p->one, p->two, o);
}
