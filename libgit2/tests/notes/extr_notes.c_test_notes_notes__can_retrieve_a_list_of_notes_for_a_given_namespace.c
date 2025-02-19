
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int _repo ;
 int cl_assert_equal_i (int,unsigned int) ;
 int cl_git_pass (int ) ;
 int create_note (int *,char*,char*,char*) ;
 int git_note_foreach (int ,char*,int ,unsigned int*) ;
 int note_list_cb ;

void test_notes_notes__can_retrieve_a_list_of_notes_for_a_given_namespace(void)
{
 git_oid note_oid1, note_oid2, note_oid3, note_oid4;
 unsigned int retrieved_notes = 0;

 create_note(&note_oid1, "refs/notes/i-can-see-dead-notes", "a65fedf39aefe402d3bb6e24df4d4f5fe4547750", "I decorate a65f\n");
 create_note(&note_oid2, "refs/notes/i-can-see-dead-notes", "c47800c7266a2be04c571c04d5a6614691ea99bd", "I decorate c478\n");
 create_note(&note_oid3, "refs/notes/i-can-see-dead-notes", "9fd738e8f7967c078dceed8190330fc8648ee56a", "I decorate 9fd7 and 4a20\n");
 create_note(&note_oid4, "refs/notes/i-can-see-dead-notes", "4a202b346bb0fb0db7eff3cffeb3c70babbd2045", "I decorate 9fd7 and 4a20\n");

 cl_git_pass(git_note_foreach
(_repo, "refs/notes/i-can-see-dead-notes", note_list_cb, &retrieved_notes));

 cl_assert_equal_i(4, retrieved_notes);
}
