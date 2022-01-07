
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct shallow_info {int* reachable; scalar_t__* need_reachability_test; int commits; int nr_commits; TYPE_1__* shallow; } ;
struct commit_array {int nr; int commits; } ;
struct commit {int dummy; } ;
typedef int ca ;
struct TYPE_2__ {int * oid; } ;


 int add_ref ;
 int for_each_ref (int ,struct commit_array*) ;
 int head_ref (int ,struct commit_array*) ;
 int in_merge_bases_many (struct commit*,int ,int ) ;
 struct commit* lookup_commit (int ,int *) ;
 int memset (struct commit_array*,int ,int) ;
 int the_repository ;

int delayed_reachability_test(struct shallow_info *si, int c)
{
 if (si->need_reachability_test[c]) {
  struct commit *commit = lookup_commit(the_repository,
            &si->shallow->oid[c]);

  if (!si->commits) {
   struct commit_array ca;

   memset(&ca, 0, sizeof(ca));
   head_ref(add_ref, &ca);
   for_each_ref(add_ref, &ca);
   si->commits = ca.commits;
   si->nr_commits = ca.nr;
  }

  si->reachable[c] = in_merge_bases_many(commit,
             si->nr_commits,
             si->commits);
  si->need_reachability_test[c] = 0;
 }
 return si->reachable[c];
}
