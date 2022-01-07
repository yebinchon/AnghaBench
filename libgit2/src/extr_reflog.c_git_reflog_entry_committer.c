
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_signature ;
struct TYPE_4__ {int const* committer; } ;
typedef TYPE_1__ git_reflog_entry ;


 int assert (TYPE_1__ const*) ;

const git_signature * git_reflog_entry_committer(const git_reflog_entry *entry)
{
 assert(entry);
 return entry->committer;
}
