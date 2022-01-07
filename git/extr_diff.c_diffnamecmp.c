
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct diff_filepair {TYPE_1__* two; TYPE_2__* one; } ;
struct TYPE_4__ {char* path; } ;
struct TYPE_3__ {char* path; } ;


 int strcmp (char const*,char const*) ;

__attribute__((used)) static int diffnamecmp(const void *a_, const void *b_)
{
 const struct diff_filepair *a = *((const struct diff_filepair **)a_);
 const struct diff_filepair *b = *((const struct diff_filepair **)b_);
 const char *name_a, *name_b;

 name_a = a->one ? a->one->path : a->two->path;
 name_b = b->one ? b->one->path : b->two->path;
 return strcmp(name_a, name_b);
}
