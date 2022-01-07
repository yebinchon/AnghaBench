
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_OID_HEXSZ ;
 int commit_count ;
 int * commit_ids ;
 int git_oid_fmt (char*,int *) ;
 scalar_t__ memcmp (char*,int ,int) ;

__attribute__((used)) static int get_commit_index(git_oid *raw_oid)
{
 int i;
 char oid[GIT_OID_HEXSZ];

 git_oid_fmt(oid, raw_oid);

 for (i = 0; i < commit_count; ++i)
  if (memcmp(oid, commit_ids[i], GIT_OID_HEXSZ) == 0)
   return i;

 return -1;
}
