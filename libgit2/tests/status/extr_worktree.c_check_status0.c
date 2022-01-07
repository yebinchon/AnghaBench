
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_status_list ;
struct TYPE_3__ {int status; } ;
typedef TYPE_1__ git_status_entry ;


 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_sz (int ,size_t) ;
 int entry_count0 ;
 int * entry_statuses0 ;
 TYPE_1__* git_status_byindex (int *,size_t) ;
 size_t git_status_list_entrycount (int *) ;

__attribute__((used)) static void check_status0(git_status_list *status)
{
 size_t i, max_i = git_status_list_entrycount(status);
 cl_assert_equal_sz(entry_count0, max_i);
 for (i = 0; i < max_i; ++i) {
  const git_status_entry *entry = git_status_byindex(status, i);
  cl_assert_equal_i(entry_statuses0[i], entry->status);
 }
}
