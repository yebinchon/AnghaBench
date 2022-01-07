
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ suspect; } ;
typedef TYPE_1__ git_blame__entry ;
typedef int git_blame ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int add_blame_entry (int *,TYPE_1__*) ;
 int dup_entry (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* git__malloc (int) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static int split_blame(git_blame *blame, git_blame__entry *split, git_blame__entry *e)
{
 git_blame__entry *new_entry;

 if (split[0].suspect && split[2].suspect) {

  dup_entry(e, &split[0]);


  new_entry = git__malloc(sizeof(*new_entry));
  GIT_ERROR_CHECK_ALLOC(new_entry);
  memcpy(new_entry, &(split[2]), sizeof(git_blame__entry));
  add_blame_entry(blame, new_entry);


  new_entry = git__malloc(sizeof(*new_entry));
  GIT_ERROR_CHECK_ALLOC(new_entry);
  memcpy(new_entry, &(split[1]), sizeof(git_blame__entry));
  add_blame_entry(blame, new_entry);
 } else if (!split[0].suspect && !split[2].suspect) {




  dup_entry(e, &split[1]);
 } else if (split[0].suspect) {

  dup_entry(e, &split[0]);
  new_entry = git__malloc(sizeof(*new_entry));
  GIT_ERROR_CHECK_ALLOC(new_entry);
  memcpy(new_entry, &(split[1]), sizeof(git_blame__entry));
  add_blame_entry(blame, new_entry);
 } else {

  dup_entry(e, &split[1]);
  new_entry = git__malloc(sizeof(*new_entry));
  GIT_ERROR_CHECK_ALLOC(new_entry);
  memcpy(new_entry, &(split[2]), sizeof(git_blame__entry));
  add_blame_entry(blame, new_entry);
 }

 return 0;
}
