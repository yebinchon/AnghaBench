
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gfree; int gmallocarray; int greallocarray; int grealloc; int gsubstrdup; int gstrndup; int gstrdup; int gcalloc; int gmalloc; } ;
typedef TYPE_1__ git_allocator ;


 int stdalloc__calloc ;
 int stdalloc__free ;
 int stdalloc__malloc ;
 int stdalloc__mallocarray ;
 int stdalloc__realloc ;
 int stdalloc__reallocarray ;
 int stdalloc__strdup ;
 int stdalloc__strndup ;
 int stdalloc__substrdup ;

int git_stdalloc_init_allocator(git_allocator *allocator)
{
 allocator->gmalloc = stdalloc__malloc;
 allocator->gcalloc = stdalloc__calloc;
 allocator->gstrdup = stdalloc__strdup;
 allocator->gstrndup = stdalloc__strndup;
 allocator->gsubstrdup = stdalloc__substrdup;
 allocator->grealloc = stdalloc__realloc;
 allocator->greallocarray = stdalloc__reallocarray;
 allocator->gmallocarray = stdalloc__mallocarray;
 allocator->gfree = stdalloc__free;
 return 0;
}
