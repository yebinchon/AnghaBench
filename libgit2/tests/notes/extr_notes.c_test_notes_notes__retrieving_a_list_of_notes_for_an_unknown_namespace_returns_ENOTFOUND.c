
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_ENOTFOUND ;
 int _repo ;
 int cl_assert_equal_i (int ,unsigned int) ;
 int cl_git_fail (int) ;
 int git_note_foreach (int ,char*,int ,unsigned int*) ;
 int note_list_cb ;

void test_notes_notes__retrieving_a_list_of_notes_for_an_unknown_namespace_returns_ENOTFOUND(void)
{
 int error;
 unsigned int retrieved_notes = 0;

 error = git_note_foreach(_repo, "refs/notes/i-am-not", note_list_cb, &retrieved_notes);
 cl_git_fail(error);
 cl_assert_equal_i(GIT_ENOTFOUND, error);

 cl_assert_equal_i(0, retrieved_notes);
}
