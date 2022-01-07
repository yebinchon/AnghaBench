
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int push; int force; int matching; char const* string; char const* src; char const* dst; int pattern; } ;
typedef TYPE_1__ git_refspec ;


 int GIT_ERROR_CHECK_ALLOC (char const*) ;
 int GIT_ERROR_INVALID ;
 int GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL ;
 int GIT_REFERENCE_FORMAT_REFSPEC_PATTERN ;
 int GIT_REFERENCE_FORMAT_REFSPEC_SHORTHAND ;
 int assert (int) ;
 void* git__strdup (char const*) ;
 void* git__strndup (char const*,size_t) ;
 int git_error_set (int ,char*,char const*) ;
 int git_reference__is_valid_name (char const*,int) ;
 int git_refspec__dispose (TYPE_1__*) ;
 scalar_t__ memchr (char const*,char,size_t) ;
 int memset (TYPE_1__*,int,int) ;
 scalar_t__ strchr (char const*,char) ;
 size_t strlen (char const*) ;
 char* strrchr (char const*,char) ;

int git_refspec__parse(git_refspec *refspec, const char *input, bool is_fetch)
{


 size_t llen;
 int is_glob = 0;
 const char *lhs, *rhs;
 int flags;

 assert(refspec && input);

 memset(refspec, 0x0, sizeof(git_refspec));
 refspec->push = !is_fetch;

 lhs = input;
 if (*lhs == '+') {
  refspec->force = 1;
  lhs++;
 }

 rhs = strrchr(lhs, ':');





 if (!is_fetch && rhs == lhs && rhs[1] == '\0') {
  refspec->matching = 1;
  refspec->string = git__strdup(input);
  GIT_ERROR_CHECK_ALLOC(refspec->string);
  refspec->src = git__strdup("");
  GIT_ERROR_CHECK_ALLOC(refspec->src);
  refspec->dst = git__strdup("");
  GIT_ERROR_CHECK_ALLOC(refspec->dst);
  return 0;
 }

 if (rhs) {
  size_t rlen = strlen(++rhs);
  if (rlen || !is_fetch) {
   is_glob = (1 <= rlen && strchr(rhs, '*'));
   refspec->dst = git__strndup(rhs, rlen);
  }
 }

 llen = (rhs ? (size_t)(rhs - lhs - 1) : strlen(lhs));
 if (1 <= llen && memchr(lhs, '*', llen)) {
  if ((rhs && !is_glob) || (!rhs && is_fetch))
   goto invalid;
  is_glob = 1;
 } else if (rhs && is_glob)
  goto invalid;

 refspec->pattern = is_glob;
 refspec->src = git__strndup(lhs, llen);
 flags = GIT_REFERENCE_FORMAT_ALLOW_ONELEVEL |
  GIT_REFERENCE_FORMAT_REFSPEC_SHORTHAND |
  (is_glob ? GIT_REFERENCE_FORMAT_REFSPEC_PATTERN : 0);

 if (is_fetch) {





  if (!*refspec->src)
   ;
  else if (!git_reference__is_valid_name(refspec->src, flags))
   goto invalid;






  if (!refspec->dst)
   ;
  else if (!*refspec->dst)
   ;
  else if (!git_reference__is_valid_name(refspec->dst, flags))
   goto invalid;
 } else {







  if (!*refspec->src)
   ;
  else if (is_glob) {
   if (!git_reference__is_valid_name(refspec->src, flags))
    goto invalid;
  }
  else {
   ;
  }







  if (!refspec->dst) {
   if (!git_reference__is_valid_name(refspec->src, flags))
    goto invalid;
  } else if (!*refspec->dst) {
   goto invalid;
  } else {
   if (!git_reference__is_valid_name(refspec->dst, flags))
    goto invalid;
  }


  if (!refspec->dst) {
   refspec->dst = git__strdup(refspec->src);
   GIT_ERROR_CHECK_ALLOC(refspec->dst);
  }
 }

 refspec->string = git__strdup(input);
 GIT_ERROR_CHECK_ALLOC(refspec->string);

 return 0;

 invalid:
        git_error_set(
                GIT_ERROR_INVALID,
                "'%s' is not a valid refspec.", input);
        git_refspec__dispose(refspec);
 return -1;
}
