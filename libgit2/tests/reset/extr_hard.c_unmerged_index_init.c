
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_index ;


 int cl_git_rewritefile (char*,char*) ;
 int git_oid_fromstr (int *,char*) ;
 int index_entry_init (int *,int,int *) ;

__attribute__((used)) static void unmerged_index_init(git_index *index, int entries)
{
 int write_ancestor = 1;
 int write_ours = 2;
 int write_theirs = 4;
 git_oid ancestor, ours, theirs;

 git_oid_fromstr(&ancestor, "452e4244b5d083ddf0460acf1ecc74db9dcfa11a");
 git_oid_fromstr(&ours, "32504b727382542f9f089e24fddac5e78533e96c");
 git_oid_fromstr(&theirs, "061d42a44cacde5726057b67558821d95db96f19");

 cl_git_rewritefile("status/conflicting_file", "conflicting file\n");

 if (entries & write_ancestor)
  index_entry_init(index, 1, &ancestor);

 if (entries & write_ours)
  index_entry_init(index, 2, &ours);

 if (entries & write_theirs)
  index_entry_init(index, 3, &theirs);
}
