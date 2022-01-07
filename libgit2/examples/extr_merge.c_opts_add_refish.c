
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int heads_count; char const** heads; } ;
typedef TYPE_1__ merge_options ;


 int assert (int ) ;
 char const** xrealloc (void*,size_t) ;

__attribute__((used)) static void opts_add_refish(merge_options *opts, const char *refish)
{
 size_t sz;

 assert(opts != ((void*)0));

 sz = ++opts->heads_count * sizeof(opts->heads[0]);
 opts->heads = xrealloc((void *) opts->heads, sz);
 opts->heads[opts->heads_count - 1] = refish;
}
