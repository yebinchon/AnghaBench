
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* msg; } ;
typedef TYPE_1__ git_reflog_entry ;


 int assert (TYPE_1__ const*) ;

const char * git_reflog_entry_message(const git_reflog_entry *entry)
{
 assert(entry);
 return entry->msg;
}
