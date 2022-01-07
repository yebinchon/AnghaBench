
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_state {int hide; int walker; int sorting; int repo; } ;
typedef int git_object ;


 int check_lg2 (int ,char*,int *) ;
 int git_object_free (int *) ;
 int git_object_id (int *) ;
 int git_revwalk_hide (int ,int ) ;
 int git_revwalk_new (int *,int ) ;
 int git_revwalk_push (int ,int ) ;
 int git_revwalk_push_head (int ) ;
 int git_revwalk_sorting (int ,int ) ;

__attribute__((used)) static void push_rev(struct log_state *s, git_object *obj, int hide)
{
 hide = s->hide ^ hide;


 if (!s->walker) {
  check_lg2(git_revwalk_new(&s->walker, s->repo),
   "Could not create revision walker", ((void*)0));
  git_revwalk_sorting(s->walker, s->sorting);
 }

 if (!obj)
  check_lg2(git_revwalk_push_head(s->walker),
   "Could not find repository HEAD", ((void*)0));
 else if (hide)
  check_lg2(git_revwalk_hide(s->walker, git_object_id(obj)),
   "Reference does not refer to a commit", ((void*)0));
 else
  check_lg2(git_revwalk_push(s->walker, git_object_id(obj)),
   "Reference does not refer to a commit", ((void*)0));

 git_object_free(obj);
}
