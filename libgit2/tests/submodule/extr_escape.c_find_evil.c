
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_submodule ;


 int EVIL_SM_NAME ;
 int EVIL_SM_NAME_WINDOWS_UNESC ;
 int GIT_UNUSED (int *) ;
 int git__strcmp (int ,char const*) ;

__attribute__((used)) static int find_evil(git_submodule *sm, const char *name, void *payload)
{
 int *foundit = (int *) payload;

 GIT_UNUSED(sm);

 if (!git__strcmp(EVIL_SM_NAME, name) ||
     !git__strcmp(EVIL_SM_NAME_WINDOWS_UNESC, name))
  *foundit = 1;

 return 0;
}
