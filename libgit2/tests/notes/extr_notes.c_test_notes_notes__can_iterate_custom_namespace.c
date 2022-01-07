
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_note_iterator ;
typedef int git_note ;


 int GIT_ITEROVER ;
 int _repo ;
 int cl_assert_equal_i (int,int) ;
 int cl_assert_equal_s (int ,char const*) ;
 int cl_git_pass (int ) ;
 int create_note (int *,char*,char*,char const*) ;
 int git_note_free (int *) ;
 int git_note_iterator_free (int *) ;
 int git_note_iterator_new (int **,int ,char*) ;
 int git_note_message (int *) ;
 int git_note_next (int *,int *,int *) ;
 int git_note_read (int **,int ,char*,int *) ;

void test_notes_notes__can_iterate_custom_namespace(void)
{
 git_note_iterator *iter;
 git_note *note;
 git_oid note_id, annotated_id;
 git_oid note_created[2];
 const char* note_message[] = {
  "I decorate a65f\n",
  "I decorate c478\n"
 };
 int i, err;

 create_note(&note_created[0], "refs/notes/beer",
  "a65fedf39aefe402d3bb6e24df4d4f5fe4547750", note_message[0]);
 create_note(&note_created[1], "refs/notes/beer",
  "c47800c7266a2be04c571c04d5a6614691ea99bd", note_message[1]);

 cl_git_pass(git_note_iterator_new(&iter, _repo, "refs/notes/beer"));

 for (i = 0; (err = git_note_next(&note_id, &annotated_id, iter)) >= 0; ++i) {
  cl_git_pass(git_note_read(&note, _repo, "refs/notes/beer", &annotated_id));
  cl_assert_equal_s(git_note_message(note), note_message[i]);
  git_note_free(note);
 }

 cl_assert_equal_i(GIT_ITEROVER, err);
 cl_assert_equal_i(2, i);
 git_note_iterator_free(iter);
}
