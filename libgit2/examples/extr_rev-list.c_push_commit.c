
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_revwalk ;
typedef int git_oid ;


 int git_revwalk_hide (int *,int const*) ;
 int git_revwalk_push (int *,int const*) ;

__attribute__((used)) static int push_commit(git_revwalk *walk, const git_oid *oid, int hide)
{
 if (hide)
  return git_revwalk_hide(walk, oid);
 else
  return git_revwalk_push(walk, oid);
}
