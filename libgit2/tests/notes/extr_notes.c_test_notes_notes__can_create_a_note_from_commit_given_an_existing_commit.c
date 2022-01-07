
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct note_create_payload {char* member_0; char* member_1; int member_2; } ;
typedef int git_reference ;
typedef int git_oid ;
typedef int git_commit ;


 int _repo ;
 int _sig ;
 int assert_notes_seen (struct note_create_payload*,int) ;
 int cl_assert (int *) ;
 int cl_git_pass (int ) ;
 int git_commit_free (int *) ;
 int git_commit_lookup (int **,int ,int *) ;
 int git_note_commit_create (int *,int *,int ,int *,int ,int ,int *,char*,int ) ;
 int git_note_foreach (int ,char*,int ,struct note_create_payload**) ;
 int git_oid_fromstr (int *,char*) ;
 int git_reference_create (int **,int ,char*,int *,int ,int *) ;
 int git_reference_free (int *) ;
 int note_list_create_cb ;

void test_notes_notes__can_create_a_note_from_commit_given_an_existing_commit(void)
{
 git_oid oid;
 git_oid notes_commit_out;
 git_commit *existing_notes_commit = ((void*)0);
 git_reference *ref;
 static struct note_create_payload can_create_a_note_from_commit_given_an_existing_commit[] = {
  { "1c9b1bc36730582a42d56eeee0dc58673d7ae869", "4a202b346bb0fb0db7eff3cffeb3c70babbd2045", 0 },
  { "1aaf94147c21f981e0a20bf57b89137c5a6aae52", "9fd738e8f7967c078dceed8190330fc8648ee56a", 0 },
  { ((void*)0), ((void*)0), 0 }
 };

 cl_git_pass(git_oid_fromstr(&oid, "4a202b346bb0fb0db7eff3cffeb3c70babbd2045"));

 cl_git_pass(git_note_commit_create(&notes_commit_out, ((void*)0), _repo, ((void*)0), _sig, _sig, &oid, "I decorate 4a20\n", 0));

 cl_git_pass(git_oid_fromstr(&oid, "9fd738e8f7967c078dceed8190330fc8648ee56a"));

 git_commit_lookup(&existing_notes_commit, _repo, &notes_commit_out);

 cl_assert(existing_notes_commit);

 cl_git_pass(git_note_commit_create(&notes_commit_out, ((void*)0), _repo, existing_notes_commit, _sig, _sig, &oid, "I decorate 9fd7\n", 0));



 cl_git_pass(git_reference_create(&ref, _repo, "refs/notes/i-can-see-dead-notes", &notes_commit_out, 0, ((void*)0)));

 cl_git_pass(git_note_foreach(_repo, "refs/notes/i-can-see-dead-notes", note_list_create_cb, &can_create_a_note_from_commit_given_an_existing_commit));

 assert_notes_seen(can_create_a_note_from_commit_given_an_existing_commit, 2);

 git_commit_free(existing_notes_commit);
 git_reference_free(ref);
}
