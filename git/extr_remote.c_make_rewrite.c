
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rewrites {int rewrite_nr; struct rewrite** rewrite; int rewrite_alloc; } ;
struct rewrite {int baselen; int base; } ;


 int ALLOC_GROW (struct rewrite**,int,int ) ;
 int strcmp (char const*,int ) ;
 int strlen (char const*) ;
 int strncmp (char const*,int ,int) ;
 struct rewrite* xcalloc (int,int) ;
 int xstrdup (char const*) ;
 int xstrndup (char const*,int) ;

__attribute__((used)) static struct rewrite *make_rewrite(struct rewrites *r, const char *base, int len)
{
 struct rewrite *ret;
 int i;

 for (i = 0; i < r->rewrite_nr; i++) {
  if (len
      ? (len == r->rewrite[i]->baselen &&
         !strncmp(base, r->rewrite[i]->base, len))
      : !strcmp(base, r->rewrite[i]->base))
   return r->rewrite[i];
 }

 ALLOC_GROW(r->rewrite, r->rewrite_nr + 1, r->rewrite_alloc);
 ret = xcalloc(1, sizeof(struct rewrite));
 r->rewrite[r->rewrite_nr++] = ret;
 if (len) {
  ret->base = xstrndup(base, len);
  ret->baselen = len;
 }
 else {
  ret->base = xstrdup(base);
  ret->baselen = strlen(base);
 }
 return ret;
}
