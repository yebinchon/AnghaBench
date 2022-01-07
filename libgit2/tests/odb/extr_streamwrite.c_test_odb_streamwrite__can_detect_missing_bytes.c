
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_4__ {int received_bytes; } ;


 int cl_assert_equal_sz (int,int ) ;
 int cl_git_fail (int ) ;
 int cl_git_pass (int ) ;
 int git_odb_stream_finalize_write (int *,TYPE_1__*) ;
 int git_odb_stream_write (TYPE_1__*,char*,int) ;
 TYPE_1__* stream ;

void test_odb_streamwrite__can_detect_missing_bytes(void)
{
 git_oid oid;

 cl_git_pass(git_odb_stream_write(stream, "deadbeef", 8));
 cl_assert_equal_sz(8, stream->received_bytes);

 cl_git_pass(git_odb_stream_write(stream, "deadbeef", 4));
 cl_assert_equal_sz(8 + 4, stream->received_bytes);

 cl_git_fail(git_odb_stream_finalize_write(&oid, stream));
}
