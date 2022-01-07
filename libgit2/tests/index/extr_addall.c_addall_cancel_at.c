
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_UNUSED (char const*) ;
 int strcmp (char const*,void*) ;

__attribute__((used)) static int addall_cancel_at(
 const char *path, const char *matched_pathspec, void *payload)
{
 GIT_UNUSED(matched_pathspec);
 return !strcmp(path, payload) ? -123 : 0;
}
