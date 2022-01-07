
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_REFS_DIR ;
 int GIT_REFS_HEADS_DIR ;
 int GIT_REFS_REMOTES_DIR ;
 int GIT_REFS_TAGS_DIR ;
 int git__prefixcmp (char const*,int ) ;
 int strlen (int ) ;

const char *git_reference__shorthand(const char *name)
{
 if (!git__prefixcmp(name, GIT_REFS_HEADS_DIR))
  return name + strlen(GIT_REFS_HEADS_DIR);
 else if (!git__prefixcmp(name, GIT_REFS_TAGS_DIR))
  return name + strlen(GIT_REFS_TAGS_DIR);
 else if (!git__prefixcmp(name, GIT_REFS_REMOTES_DIR))
  return name + strlen(GIT_REFS_REMOTES_DIR);
 else if (!git__prefixcmp(name, GIT_REFS_DIR))
  return name + strlen(GIT_REFS_DIR);


 return name;
}
