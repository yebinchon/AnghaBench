
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ git_time_t ;
struct TYPE_4__ {int email; int name; } ;
typedef TYPE_1__ git_signature ;
typedef int git_oid ;
typedef int git_commit ;
typedef int commit_ids ;


 int cl_assert (int) ;
 int cl_assert_equal_s (char*,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int g_repo ;
 TYPE_1__* git_commit_author (int *) ;
 TYPE_1__* git_commit_committer (int *) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 char* git_commit_message (int *) ;
 int git_commit_parent (int **,int *,unsigned int) ;
 unsigned int git_commit_parentcount (int *) ;
 scalar_t__ git_commit_time (int *) ;
 int git_oid_fromstr (int *,char const*) ;

void test_commit_parse__details0(void) {
 static const char *commit_ids[] = {
  "a4a7dce85cf63874e984719f4fdd239f5145052f",
  "9fd738e8f7967c078dceed8190330fc8648ee56a",
  "4a202b346bb0fb0db7eff3cffeb3c70babbd2045",
  "c47800c7266a2be04c571c04d5a6614691ea99bd",
  "8496071c1b46c854b31185ea97743be6a8774479",
  "5b5b025afb0b4c913b4c338a42934a3863bf3644",
  "a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
 };
 const size_t commit_count = sizeof(commit_ids) / sizeof(const char *);
 unsigned int i;

 for (i = 0; i < commit_count; ++i) {
  git_oid id;
  git_commit *commit;

  const git_signature *author, *committer;
  const char *message;
  git_time_t commit_time;
  unsigned int parents, p;
  git_commit *parent = ((void*)0), *old_parent = ((void*)0);

  git_oid_fromstr(&id, commit_ids[i]);

  cl_git_pass(git_commit_lookup(&commit, g_repo, &id));

  message = git_commit_message(commit);
  author = git_commit_author(commit);
  committer = git_commit_committer(commit);
  commit_time = git_commit_time(commit);
  parents = git_commit_parentcount(commit);

  cl_assert_equal_s("Scott Chacon", author->name);
  cl_assert_equal_s("schacon@gmail.com", author->email);
  cl_assert_equal_s("Scott Chacon", committer->name);
  cl_assert_equal_s("schacon@gmail.com", committer->email);
  cl_assert(message != ((void*)0));
  cl_assert(commit_time > 0);
  cl_assert(parents <= 2);
  for (p = 0;p < parents;p++) {
   if (old_parent != ((void*)0))
    git_commit_free(old_parent);

   old_parent = parent;
   cl_git_pass(git_commit_parent(&parent, commit, p));
   cl_assert(parent != ((void*)0));
   cl_assert(git_commit_author(parent) != ((void*)0));
  }
  git_commit_free(old_parent);
  git_commit_free(parent);

  cl_git_fail(git_commit_parent(&parent, commit, parents));
  git_commit_free(commit);
 }
}
