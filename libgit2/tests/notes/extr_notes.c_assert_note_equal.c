
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_note ;
typedef int git_blob ;


 int _repo ;
 int cl_assert_equal_oid (int ,int *) ;
 int cl_assert_equal_s (int ,char const*) ;
 int cl_git_pass (int ) ;
 int git_blob_free (int *) ;
 int git_blob_lookup (int **,int ,int *) ;
 scalar_t__ git_blob_rawcontent (int *) ;
 int git_note_id (int *) ;
 int git_note_message (int *) ;

__attribute__((used)) static void assert_note_equal(git_note *note, char *message, git_oid *note_oid) {
 git_blob *blob;

 cl_assert_equal_s(git_note_message(note), message);
 cl_assert_equal_oid(git_note_id(note), note_oid);

 cl_git_pass(git_blob_lookup(&blob, _repo, note_oid));
 cl_assert_equal_s(git_note_message(note), (const char *)git_blob_rawcontent(blob));

 git_blob_free(blob);
}
