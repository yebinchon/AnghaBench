
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const* const,char const* const) ;

__attribute__((used)) static int compare_untracked(const void *a_, const void *b_)
{
 const char *const *a = a_;
 const char *const *b = b_;
 return strcmp(*a, *b);
}
