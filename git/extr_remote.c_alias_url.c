
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rewrites {int rewrite_nr; TYPE_1__** rewrite; } ;
struct counted_string {scalar_t__ len; int s; } ;
struct TYPE_2__ {int instead_of_nr; int base; struct counted_string* instead_of; } ;


 scalar_t__ starts_with (char const*,int ) ;
 char const* xstrfmt (char*,int ,char const*) ;

__attribute__((used)) static const char *alias_url(const char *url, struct rewrites *r)
{
 int i, j;
 struct counted_string *longest;
 int longest_i;

 longest = ((void*)0);
 longest_i = -1;
 for (i = 0; i < r->rewrite_nr; i++) {
  if (!r->rewrite[i])
   continue;
  for (j = 0; j < r->rewrite[i]->instead_of_nr; j++) {
   if (starts_with(url, r->rewrite[i]->instead_of[j].s) &&
       (!longest ||
        longest->len < r->rewrite[i]->instead_of[j].len)) {
    longest = &(r->rewrite[i]->instead_of[j]);
    longest_i = i;
   }
  }
 }
 if (!longest)
  return url;

 return xstrfmt("%s%s", r->rewrite[longest_i]->base, url + longest->len);
}
