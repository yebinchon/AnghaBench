
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_UNUSED (char const*) ;
 int git__suffixcmp (char const*,void*) ;

__attribute__((used)) static int addall_match_suffix(
 const char *path, const char *matched_pathspec, void *payload)
{
 GIT_UNUSED(matched_pathspec);
 return !git__suffixcmp(path, payload) ? 0 : 1;
}
