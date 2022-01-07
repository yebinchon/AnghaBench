
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diffstat_t {scalar_t__ nr; struct diffstat_file** files; int alloc; } ;
struct diffstat_file {int is_renamed; void* name; int * from_name; } ;


 int ALLOC_GROW (struct diffstat_file**,scalar_t__,int ) ;
 struct diffstat_file* xcalloc (int,int) ;
 void* xstrdup (char const*) ;

__attribute__((used)) static struct diffstat_file *diffstat_add(struct diffstat_t *diffstat,
       const char *name_a,
       const char *name_b)
{
 struct diffstat_file *x;
 x = xcalloc(1, sizeof(*x));
 ALLOC_GROW(diffstat->files, diffstat->nr + 1, diffstat->alloc);
 diffstat->files[diffstat->nr++] = x;
 if (name_b) {
  x->from_name = xstrdup(name_a);
  x->name = xstrdup(name_b);
  x->is_renamed = 1;
 }
 else {
  x->from_name = ((void*)0);
  x->name = xstrdup(name_a);
 }
 return x;
}
