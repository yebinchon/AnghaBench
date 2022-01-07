
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* path; } ;
typedef TYPE_2__ git_index_entry ;
struct TYPE_7__ {scalar_t__ (* pfxcomp ) (char*,char*) ;} ;
struct TYPE_9__ {TYPE_1__ base; } ;
typedef TYPE_3__ git_diff_generated ;


 size_t strlen (char*) ;
 scalar_t__ stub1 (char*,char*) ;

__attribute__((used)) static bool entry_is_prefixed(
 git_diff_generated *diff,
 const git_index_entry *item,
 const git_index_entry *prefix_item)
{
 size_t pathlen;

 if (!item || diff->base.pfxcomp(item->path, prefix_item->path) != 0)
  return 0;

 pathlen = strlen(prefix_item->path);

 return (prefix_item->path[pathlen - 1] == '/' ||
   item->path[pathlen] == '\0' ||
   item->path[pathlen] == '/');
}
