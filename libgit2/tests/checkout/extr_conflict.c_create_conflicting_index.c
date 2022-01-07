
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct checkout_index_entry {int member_0; int member_2; char* member_3; int member_1; } ;


 int CONFLICTING_ANCESTOR_OID ;
 int CONFLICTING_OURS_OID ;
 int CONFLICTING_THEIRS_OID ;
 int cl_git_pass (int ) ;
 int create_index (struct checkout_index_entry*,int) ;
 int g_index ;
 int git_index_write (int ) ;

__attribute__((used)) static void create_conflicting_index(void)
{
 struct checkout_index_entry checkout_index_entries[] = {
  { 0100644, CONFLICTING_ANCESTOR_OID, 1, "conflicting.txt" },
  { 0100644, CONFLICTING_OURS_OID, 2, "conflicting.txt" },
  { 0100644, CONFLICTING_THEIRS_OID, 3, "conflicting.txt" },
 };

 create_index(checkout_index_entries, 3);
 cl_git_pass(git_index_write(g_index));
}
