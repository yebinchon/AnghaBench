
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ git_reference ;


 int GIT_ADD_SIZET_OVERFLOW (size_t*,size_t,int) ;
 TYPE_1__* git__calloc (int,size_t) ;
 int memcpy (int ,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static git_reference *alloc_ref(const char *name)
{
 git_reference *ref = ((void*)0);
 size_t namelen = strlen(name), reflen;

 if (!GIT_ADD_SIZET_OVERFLOW(&reflen, sizeof(git_reference), namelen) &&
  !GIT_ADD_SIZET_OVERFLOW(&reflen, reflen, 1) &&
  (ref = git__calloc(1, reflen)) != ((void*)0))
  memcpy(ref->name, name, namelen + 1);

 return ref;
}
