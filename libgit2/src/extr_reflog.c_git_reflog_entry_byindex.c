
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_reflog_entry ;
struct TYPE_6__ {size_t length; } ;
struct TYPE_5__ {TYPE_2__ entries; } ;
typedef TYPE_1__ git_reflog ;


 int assert (TYPE_1__ const*) ;
 int const* git_vector_get (TYPE_2__*,int ) ;
 int reflog_inverse_index (size_t,size_t) ;

const git_reflog_entry * git_reflog_entry_byindex(const git_reflog *reflog, size_t idx)
{
 assert(reflog);

 if (idx >= reflog->entries.length)
  return ((void*)0);

 return git_vector_get(
  &reflog->entries, reflog_inverse_index(idx, reflog->entries.length));
}
