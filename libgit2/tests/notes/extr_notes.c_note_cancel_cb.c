
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_UNUSED (int const*) ;

__attribute__((used)) static int note_cancel_cb(
 const git_oid *blob_id, const git_oid *annotated_obj_id, void *payload)
{
 unsigned int *count = (unsigned int *)payload;

 GIT_UNUSED(blob_id);
 GIT_UNUSED(annotated_obj_id);

 (*count)++;

 return (*count > 2);
}
