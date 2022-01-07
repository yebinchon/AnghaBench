
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int path; } ;
typedef TYPE_1__ git_index_entry ;


 int GIT_INDEX_ENTRY_STAGE (TYPE_1__ const*) ;
 int strcasecmp (int ,int ) ;

int git_index_entry_icmp(const void *a, const void *b)
{
 int diff;
 const git_index_entry *entry_a = a;
 const git_index_entry *entry_b = b;

 diff = strcasecmp(entry_a->path, entry_b->path);

 if (diff == 0)
  diff = (GIT_INDEX_ENTRY_STAGE(entry_a) - GIT_INDEX_ENTRY_STAGE(entry_b));

 return diff;
}
