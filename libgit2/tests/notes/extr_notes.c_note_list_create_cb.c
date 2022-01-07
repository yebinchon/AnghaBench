
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct note_create_payload {int seen; int * object_oid; int * note_oid; } ;
typedef int git_oid ;


 int cl_fail (char*) ;
 int cl_git_pass (int ) ;
 scalar_t__ git_oid_cmp (int *,int const*) ;
 int git_oid_fromstr (int *,int *) ;

__attribute__((used)) static int note_list_create_cb(
 const git_oid *blob_oid, const git_oid *annotated_obj_id, void *payload)
{
 git_oid expected_note_oid, expected_target_oid;
 struct note_create_payload *notes = payload;
 size_t i;

 for (i = 0; notes[i].note_oid != ((void*)0); i++) {
  cl_git_pass(git_oid_fromstr(&expected_note_oid, notes[i].note_oid));

  if (git_oid_cmp(&expected_note_oid, blob_oid) != 0)
   continue;

  cl_git_pass(git_oid_fromstr(&expected_target_oid, notes[i].object_oid));

  if (git_oid_cmp(&expected_target_oid, annotated_obj_id) != 0)
   continue;

  notes[i].seen = 1;
  return 0;
 }

 cl_fail("Did not see expected note");
 return 0;
}
