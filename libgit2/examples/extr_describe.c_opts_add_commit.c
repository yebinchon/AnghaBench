
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int commit_count; char const** commits; } ;
typedef TYPE_1__ describe_options ;


 int assert (int ) ;
 char const** xrealloc (void*,size_t) ;

__attribute__((used)) static void opts_add_commit(describe_options *opts, const char *commit)
{
 size_t sz;

 assert(opts != ((void*)0));

 sz = ++opts->commit_count * sizeof(opts->commits[0]);
 opts->commits = xrealloc((void *) opts->commits, sz);
 opts->commits[opts->commit_count - 1] = commit;
}
