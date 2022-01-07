
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rev_info {scalar_t__ cherry_mark; scalar_t__ graph; scalar_t__ left_right; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;


 int BOUNDARY ;
 int PATCHSAME ;
 int SYMMETRIC_LEFT ;
 int UNINTERESTING ;

char *get_revision_mark(const struct rev_info *revs, const struct commit *commit)
{
 if (commit->object.flags & BOUNDARY)
  return "-";
 else if (commit->object.flags & UNINTERESTING)
  return "^";
 else if (commit->object.flags & PATCHSAME)
  return "=";
 else if (!revs || revs->left_right) {
  if (commit->object.flags & SYMMETRIC_LEFT)
   return "<";
  else
   return ">";
 } else if (revs->graph)
  return "*";
 else if (revs->cherry_mark)
  return "+";
 return "";
}
