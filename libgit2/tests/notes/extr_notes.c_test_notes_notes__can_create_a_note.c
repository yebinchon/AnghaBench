
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct note_create_payload {char* member_0; char* member_1; int object_oid; int member_2; } ;
typedef int git_oid ;


 int _repo ;
 int assert_notes_seen (struct note_create_payload*,int) ;
 int cl_git_pass (int ) ;
 int create_note (int *,char*,int ,char*) ;
 int git_note_foreach (int ,char*,int ,struct note_create_payload**) ;
 int note_list_create_cb ;

void test_notes_notes__can_create_a_note(void)
{
 git_oid note_oid;
 static struct note_create_payload can_create_a_note[] = {
  { "1c9b1bc36730582a42d56eeee0dc58673d7ae869", "4a202b346bb0fb0db7eff3cffeb3c70babbd2045", 0 },
  { ((void*)0), ((void*)0), 0 }
 };

 create_note(&note_oid, "refs/notes/i-can-see-dead-notes", can_create_a_note[0].object_oid, "I decorate 4a20\n");

 cl_git_pass(git_note_foreach(_repo, "refs/notes/i-can-see-dead-notes", note_list_create_cb, &can_create_a_note));

 assert_notes_seen(can_create_a_note, 1);
}
