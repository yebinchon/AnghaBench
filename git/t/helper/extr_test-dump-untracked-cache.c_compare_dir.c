
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct untracked_cache_dir {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int compare_dir(const void *a_, const void *b_)
{
 const struct untracked_cache_dir *const *a = a_;
 const struct untracked_cache_dir *const *b = b_;
 return strcmp((*a)->name, (*b)->name);
}
