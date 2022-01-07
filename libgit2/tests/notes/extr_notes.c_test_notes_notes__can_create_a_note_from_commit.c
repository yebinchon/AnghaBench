
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct note_create_payload {char* member_0; char* member_1; int object_oid; int member_2; } ;
typedef int git_reference ;
typedef int git_oid ;


 int _repo ;
 int _sig ;
 int assert_notes_seen (struct note_create_payload*,int) ;
 int cl_git_pass (int ) ;
 int git_note_commit_create (int *,int *,int ,int *,int ,int ,int *,char*,int) ;
 int git_note_foreach (int ,char*,int ,struct note_create_payload**) ;
 int git_oid_fromstr (int *,int ) ;
 int git_reference_create (int **,int ,char*,int *,int ,int *) ;
 int git_reference_free (int *) ;
 int note_list_create_cb ;

void test_notes_notes__can_create_a_note_from_commit(void)
{
 git_oid oid;
 git_oid notes_commit_out;
 git_reference *ref;
 static struct note_create_payload can_create_a_note_from_commit[] = {
  { "1c9b1bc36730582a42d56eeee0dc58673d7ae869", "4a202b346bb0fb0db7eff3cffeb3c70babbd2045", 0 },
  { ((void*)0), ((void*)0), 0 }
 };

 cl_git_pass(git_oid_fromstr(&oid, can_create_a_note_from_commit[0].object_oid));

 cl_git_pass(git_note_commit_create(&notes_commit_out, ((void*)0), _repo, ((void*)0), _sig, _sig, &oid, "I decorate 4a20\n", 1));



 cl_git_pass(git_reference_create(&ref, _repo, "refs/notes/i-can-see-dead-notes", &notes_commit_out, 0, ((void*)0)));

 cl_git_pass(git_note_foreach(_repo, "refs/notes/i-can-see-dead-notes", note_list_create_cb, &can_create_a_note_from_commit));

 assert_notes_seen(can_create_a_note_from_commit, 1);

 git_reference_free(ref);
}
