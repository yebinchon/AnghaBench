
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
typedef TYPE_1__ git_reference ;


 int GIT_ADD_SIZET_OVERFLOW (size_t*,size_t,int) ;
 TYPE_1__* git__realloc (TYPE_1__*,size_t) ;
 int memcpy (int ,char const*,size_t) ;
 size_t strlen (char const*) ;

git_reference *git_reference__set_name(
 git_reference *ref, const char *name)
{
 size_t namelen = strlen(name);
 size_t reflen;
 git_reference *rewrite = ((void*)0);

 if (!GIT_ADD_SIZET_OVERFLOW(&reflen, sizeof(git_reference), namelen) &&
  !GIT_ADD_SIZET_OVERFLOW(&reflen, reflen, 1) &&
  (rewrite = git__realloc(ref, reflen)) != ((void*)0))
  memcpy(rewrite->name, name, namelen + 1);

 return rewrite;
}
