
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct repository {int dummy; } ;


 unsigned int INTERPRET_BRANCH_HEAD ;
 unsigned int INTERPRET_BRANCH_LOCAL ;
 int branch_get_push ;
 int branch_get_upstream ;
 int interpret_branch_mark (struct repository*,char const*,int,int,struct strbuf*,int ,int ,unsigned int) ;
 int interpret_empty_at (char const*,int,int,struct strbuf*) ;
 int interpret_nth_prior_checkout (struct repository*,char const*,int,struct strbuf*) ;
 char* memchr (char const*,char,int) ;
 int push_mark ;
 int reinterpret (struct repository*,char const*,int,int,struct strbuf*,unsigned int) ;
 int strlen (char const*) ;
 int upstream_mark ;

int repo_interpret_branch_name(struct repository *r,
          const char *name, int namelen,
          struct strbuf *buf,
          unsigned allowed)
{
 char *at;
 const char *start;
 int len;

 if (!namelen)
  namelen = strlen(name);

 if (!allowed || (allowed & INTERPRET_BRANCH_LOCAL)) {
  len = interpret_nth_prior_checkout(r, name, namelen, buf);
  if (!len) {
   return len;
  } else if (len > 0) {
   if (len == namelen)
    return len;
   else
    return reinterpret(r, name, namelen, len, buf, allowed);
  }
 }

 for (start = name;
      (at = memchr(start, '@', namelen - (start - name)));
      start = at + 1) {

  if (!allowed || (allowed & INTERPRET_BRANCH_HEAD)) {
   len = interpret_empty_at(name, namelen, at - name, buf);
   if (len > 0)
    return reinterpret(r, name, namelen, len, buf,
         allowed);
  }

  len = interpret_branch_mark(r, name, namelen, at - name, buf,
         upstream_mark, branch_get_upstream,
         allowed);
  if (len > 0)
   return len;

  len = interpret_branch_mark(r, name, namelen, at - name, buf,
         push_mark, branch_get_push,
         allowed);
  if (len > 0)
   return len;
 }

 return -1;
}
