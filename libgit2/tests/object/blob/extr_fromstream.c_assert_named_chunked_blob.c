
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* write ) (TYPE_1__*,int ,int ) ;} ;
typedef TYPE_1__ git_writestream ;
typedef int git_oid ;


 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_pass (int ) ;
 int git_blob_create_from_stream (TYPE_1__**,int ,char const*) ;
 int git_blob_create_from_stream_commit (int *,TYPE_1__*) ;
 int git_oid_fromstr (int *,char const*) ;
 int repo ;
 int strlen (int ) ;
 int stub1 (TYPE_1__*,int ,int ) ;
 int textual_content ;

__attribute__((used)) static void assert_named_chunked_blob(const char *expected_sha, const char *fake_name)
{
 git_oid expected_id, id;
 git_writestream *stream;
 int i, howmany = 6;

 cl_git_pass(git_oid_fromstr(&expected_id, expected_sha));

 cl_git_pass(git_blob_create_from_stream(&stream, repo, fake_name));

 for (i = 0; i < howmany; i++)
  cl_git_pass(stream->write(stream, textual_content, strlen(textual_content)));

 cl_git_pass(git_blob_create_from_stream_commit(&id, stream));

 cl_assert_equal_oid(&expected_id, &id);
}
