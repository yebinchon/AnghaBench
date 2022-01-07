
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec_item {char* match; int len; int magic; int nowildcard_len; scalar_t__ attr_match_nr; scalar_t__ prefix; } ;
struct index_state {int dummy; } ;


 unsigned int DO_MATCH_DIRECTORY ;
 unsigned int DO_MATCH_LEADING_PATHSPEC ;
 int MATCHED_EXACTLY ;
 int MATCHED_FNMATCH ;
 int MATCHED_RECURSIVELY ;
 int MATCHED_RECURSIVELY_LEADING_PATHSPEC ;
 int PATHSPEC_ICASE ;
 int git_fnmatch (struct pathspec_item const*,char const*,char const*,int) ;
 int match_pathspec_attrs (struct index_state const*,char const*,int,struct pathspec_item const*) ;
 scalar_t__ ps_strncmp (struct pathspec_item const*,char const*,char const*,int) ;
 scalar_t__ strncmp (char*,char const*,scalar_t__) ;

__attribute__((used)) static int match_pathspec_item(const struct index_state *istate,
          const struct pathspec_item *item, int prefix,
          const char *name, int namelen, unsigned flags)
{

 const char *match = item->match + prefix;
 int matchlen = item->len - prefix;
 if (item->prefix && (item->magic & PATHSPEC_ICASE) &&
     strncmp(item->match, name - prefix, item->prefix))
  return 0;

 if (item->attr_match_nr &&
     !match_pathspec_attrs(istate, name, namelen, item))
  return 0;


 if (!*match)
  return MATCHED_RECURSIVELY;

 if (matchlen <= namelen && !ps_strncmp(item, match, name, matchlen)) {
  if (matchlen == namelen)
   return MATCHED_EXACTLY;

  if (match[matchlen-1] == '/' || name[matchlen] == '/')
   return MATCHED_RECURSIVELY;
 } else if ((flags & DO_MATCH_DIRECTORY) &&
     match[matchlen - 1] == '/' &&
     namelen == matchlen - 1 &&
     !ps_strncmp(item, match, name, namelen))
  return MATCHED_EXACTLY;

 if (item->nowildcard_len < item->len &&
     !git_fnmatch(item, match, name,
    item->nowildcard_len - prefix))
  return MATCHED_FNMATCH;


 if (flags & DO_MATCH_LEADING_PATHSPEC) {

  int offset = name[namelen-1] == '/' ? 1 : 0;
  if ((namelen < matchlen) &&
      (match[namelen-offset] == '/') &&
      !ps_strncmp(item, match, name, namelen))
   return MATCHED_RECURSIVELY_LEADING_PATHSPEC;


  if (item->nowildcard_len < item->len &&
      ps_strncmp(item, match, name,
          item->nowildcard_len - prefix))
   return 0;
  return MATCHED_RECURSIVELY_LEADING_PATHSPEC;
 }

 return 0;
}
