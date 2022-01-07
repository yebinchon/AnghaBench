
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* write ) (TYPE_1__*,int ,int ) ;} ;
typedef TYPE_1__ git_writestream ;
typedef int git_oid ;
typedef int git_object ;


 int GIT_ENOTFOUND ;
 int GIT_OBJECT_ANY ;
 int GIT_OBJECT_BLOB ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_blob_create_from_stream (TYPE_1__**,int ,int *) ;
 int git_blob_create_from_stream_commit (int *,TYPE_1__*) ;
 int git_object_free (int *) ;
 int git_object_lookup (int **,int ,int *,int ) ;
 int git_oid_fromstr (int *,char*) ;
 int repo ;
 int strlen (int ) ;
 int stub1 (TYPE_1__*,int ,int ) ;
 int textual_content ;

void test_object_blob_fromstream__multiple_write(void)
{
 git_oid expected_id, id;
 git_object *blob;
 git_writestream *stream;
 int i, howmany = 6;

 cl_git_pass(git_oid_fromstr(&expected_id, "321cbdf08803c744082332332838df6bd160f8f9"));

 cl_git_fail_with(GIT_ENOTFOUND,
    git_object_lookup(&blob, repo, &expected_id, GIT_OBJECT_ANY));

 cl_git_pass(git_blob_create_from_stream(&stream, repo, ((void*)0)));

 for (i = 0; i < howmany; i++)
  cl_git_pass(stream->write(stream, textual_content, strlen(textual_content)));

 cl_git_pass(git_blob_create_from_stream_commit(&id, stream));
 cl_assert_equal_oid(&expected_id, &id);

 cl_git_pass(git_object_lookup(&blob, repo, &expected_id, GIT_OBJECT_BLOB));

 git_object_free(blob);
}
