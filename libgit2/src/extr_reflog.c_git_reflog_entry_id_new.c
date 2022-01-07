
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int const oid_cur; } ;
typedef TYPE_1__ git_reflog_entry ;
typedef int git_oid ;


 int assert (TYPE_1__ const*) ;

const git_oid * git_reflog_entry_id_new(const git_reflog_entry *entry)
{
 assert(entry);
 return &entry->oid_cur;
}
