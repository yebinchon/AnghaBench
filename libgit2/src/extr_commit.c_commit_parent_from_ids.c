
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_2__ {size_t total; int const** parents; } ;
typedef TYPE_1__ commit_parent_oids ;



__attribute__((used)) static const git_oid *commit_parent_from_ids(size_t curr, void *payload)
{
 commit_parent_oids *data = payload;
 return (curr < data->total) ? data->parents[curr] : ((void*)0);
}
