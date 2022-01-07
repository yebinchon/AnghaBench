
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_state {char* repodir; unsigned int sorting; int walker; int repo; } ;


 unsigned int GIT_SORT_REVERSE ;
 int check_lg2 (int ,char*,char*) ;
 int git_repository_open_ext (int *,char*,int ,int *) ;
 int git_revwalk_new (int *,int ) ;
 int git_revwalk_sorting (int ,unsigned int) ;

__attribute__((used)) static void set_sorting(struct log_state *s, unsigned int sort_mode)
{

 if (!s->repo) {
  if (!s->repodir) s->repodir = ".";
  check_lg2(git_repository_open_ext(&s->repo, s->repodir, 0, ((void*)0)),
   "Could not open repository", s->repodir);
 }


 if (!s->walker)
  check_lg2(git_revwalk_new(&s->walker, s->repo),
   "Could not create revision walker", ((void*)0));

 if (sort_mode == GIT_SORT_REVERSE)
  s->sorting = s->sorting ^ GIT_SORT_REVERSE;
 else
  s->sorting = sort_mode | (s->sorting & GIT_SORT_REVERSE);

 git_revwalk_sorting(s->walker, s->sorting);
}
