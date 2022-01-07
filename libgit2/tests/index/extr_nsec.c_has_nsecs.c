
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nanoseconds; } ;
struct TYPE_5__ {scalar_t__ nanoseconds; } ;
struct TYPE_7__ {TYPE_2__ mtime; TYPE_1__ ctime; } ;
typedef TYPE_3__ git_index_entry ;


 size_t git_index_entrycount (int ) ;
 TYPE_3__* git_index_get_byindex (int ,size_t) ;
 int repo_index ;

__attribute__((used)) static bool has_nsecs(void)
{
 const git_index_entry *entry;
 size_t i;
 bool has_nsecs = 0;

 for (i = 0; i < git_index_entrycount(repo_index); i++) {
  entry = git_index_get_byindex(repo_index, i);

  if (entry->ctime.nanoseconds || entry->mtime.nanoseconds) {
   has_nsecs = 1;
   break;
  }
 }

 return has_nsecs;
}
