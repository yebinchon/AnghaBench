
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
typedef TYPE_1__ git_index_reuc_entry ;


 int strcasecmp (void const*,int ) ;

__attribute__((used)) static int reuc_isrch(const void *key, const void *array_member)
{
 const git_index_reuc_entry *reuc = array_member;

 return strcasecmp(key, reuc->path);
}
