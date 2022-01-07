
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct annotated_commit_cb_data {size_t i; int * oid_str; } ;
typedef int git_oid ;


 int cl_assert (int) ;
 scalar_t__ git_oid_cmp (int *,int const*) ;
 int git_oid_fromstr (int *,int ) ;

__attribute__((used)) static int annotated_commit_foreach_cb(const git_oid *oid, void *payload)
{
 git_oid expected_oid;
 struct annotated_commit_cb_data *cb_data = payload;

 git_oid_fromstr(&expected_oid, cb_data->oid_str[cb_data->i]);
 cl_assert(git_oid_cmp(&expected_oid, oid) == 0);
 cb_data->i++;
 return 0;
}
