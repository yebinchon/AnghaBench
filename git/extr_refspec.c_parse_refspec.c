
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct refspec_item {int force; int matching; int pattern; int exact_sha1; int * dst; int * src; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {size_t hexsz; } ;


 int REFNAME_ALLOW_ONELEVEL ;
 int REFNAME_REFSPEC_PATTERN ;
 scalar_t__ check_refname_format (int *,int) ;
 int get_oid_hex (int *,struct object_id*) ;
 scalar_t__ memchr (char const*,char,size_t) ;
 scalar_t__ strchr (char const*,char) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;
 TYPE_1__* the_hash_algo ;
 void* xstrndup (char const*,size_t) ;

__attribute__((used)) static int parse_refspec(struct refspec_item *item, const char *refspec, int fetch)
{
 size_t llen;
 int is_glob;
 const char *lhs, *rhs;
 int flags;

 is_glob = 0;

 lhs = refspec;
 if (*lhs == '+') {
  item->force = 1;
  lhs++;
 }

 rhs = strrchr(lhs, ':');





 if (!fetch && rhs == lhs && rhs[1] == '\0') {
  item->matching = 1;
  return 1;
 }

 if (rhs) {
  size_t rlen = strlen(++rhs);
  is_glob = (1 <= rlen && strchr(rhs, '*'));
  item->dst = xstrndup(rhs, rlen);
 } else {
  item->dst = ((void*)0);
 }

 llen = (rhs ? (rhs - lhs - 1) : strlen(lhs));
 if (1 <= llen && memchr(lhs, '*', llen)) {
  if ((rhs && !is_glob) || (!rhs && fetch))
   return 0;
  is_glob = 1;
 } else if (rhs && is_glob) {
  return 0;
 }

 item->pattern = is_glob;
 item->src = xstrndup(lhs, llen);
 flags = REFNAME_ALLOW_ONELEVEL | (is_glob ? REFNAME_REFSPEC_PATTERN : 0);

 if (fetch) {
  struct object_id unused;


  if (!*item->src)
   ;
  else if (llen == the_hash_algo->hexsz && !get_oid_hex(item->src, &unused))
   item->exact_sha1 = 1;
  else if (!check_refname_format(item->src, flags))
   ;
  else
   return 0;

  if (!item->dst)
   ;
  else if (!*item->dst)
   ;
  else if (!check_refname_format(item->dst, flags))
   ;
  else
   return 0;
 } else {







  if (!*item->src)
   ;
  else if (is_glob) {
   if (check_refname_format(item->src, flags))
    return 0;
  }
  else
   ;







  if (!item->dst) {
   if (check_refname_format(item->src, flags))
    return 0;
  } else if (!*item->dst) {
   return 0;
  } else {
   if (check_refname_format(item->dst, flags))
    return 0;
  }
 }

 return 1;
}
