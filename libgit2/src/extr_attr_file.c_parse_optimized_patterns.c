
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_pool ;
struct TYPE_3__ {int length; int pattern; int flags; } ;
typedef TYPE_1__ git_attr_fnmatch ;


 int GIT_ATTR_FNMATCH_MATCH_ALL ;
 int git_pool_strndup (int *,char const*,int) ;

__attribute__((used)) static bool parse_optimized_patterns(
 git_attr_fnmatch *spec,
 git_pool *pool,
 const char *pattern)
{
 if (!pattern[1] && (pattern[0] == '*' || pattern[0] == '.')) {
  spec->flags = GIT_ATTR_FNMATCH_MATCH_ALL;
  spec->pattern = git_pool_strndup(pool, pattern, 1);
  spec->length = 1;

  return 1;
 }

 return 0;
}
