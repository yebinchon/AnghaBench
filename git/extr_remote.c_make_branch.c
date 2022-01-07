
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct branch {int * name; int refname; } ;


 int ALLOC_GROW (struct branch**,int,int ) ;
 struct branch** branches ;
 int branches_alloc ;
 int branches_nr ;
 int strcmp (char const*,int *) ;
 int strncmp (char const*,int *,int) ;
 struct branch* xcalloc (int,int) ;
 int * xstrdup (char const*) ;
 int xstrfmt (char*,int *) ;
 int * xstrndup (char const*,int) ;

__attribute__((used)) static struct branch *make_branch(const char *name, int len)
{
 struct branch *ret;
 int i;

 for (i = 0; i < branches_nr; i++) {
  if (len ? (!strncmp(name, branches[i]->name, len) &&
      !branches[i]->name[len]) :
      !strcmp(name, branches[i]->name))
   return branches[i];
 }

 ALLOC_GROW(branches, branches_nr + 1, branches_alloc);
 ret = xcalloc(1, sizeof(struct branch));
 branches[branches_nr++] = ret;
 if (len)
  ret->name = xstrndup(name, len);
 else
  ret->name = xstrdup(name);
 ret->refname = xstrfmt("refs/heads/%s", ret->name);

 return ret;
}
