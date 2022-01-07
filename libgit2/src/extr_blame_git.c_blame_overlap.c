
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int git_blame__origin ;
struct TYPE_8__ {scalar_t__ suspect; int member_0; } ;
typedef TYPE_1__ git_blame__entry ;
typedef int git_blame ;


 int decref_split (TYPE_1__*) ;
 scalar_t__ split_blame (int *,TYPE_1__*,TYPE_1__*) ;
 int split_overlap (TYPE_1__*,TYPE_1__*,size_t,size_t,size_t,int *) ;

__attribute__((used)) static int blame_overlap(
  git_blame *blame,
  git_blame__entry *e,
  size_t tlno,
  size_t plno,
  size_t same,
  git_blame__origin *parent)
{
 git_blame__entry split[3] = {{0}};

 split_overlap(split, e, tlno, plno, same, parent);
 if (split[1].suspect)
  if (split_blame(blame, split, e) < 0)
   return -1;
 decref_split(split);

 return 0;
}
