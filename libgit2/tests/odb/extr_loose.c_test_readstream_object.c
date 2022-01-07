
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int id; } ;
typedef TYPE_1__ object_data ;
struct TYPE_8__ {size_t len; char* data; int type; } ;
typedef TYPE_2__ git_rawobj ;
typedef int git_oid ;
typedef int git_odb_stream ;
typedef int git_odb ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int cmp_objects (TYPE_2__*,TYPE_1__*) ;
 int git_odb_free (int *) ;
 int git_odb_open (int **,char*) ;
 int git_odb_open_rstream (int **,size_t*,int *,int *,int *) ;
 int git_odb_stream_free (int *) ;
 int git_odb_stream_read (int *,char*,size_t) ;
 int git_oid_fromstr (int *,int ) ;
 int write_object_files (TYPE_1__*) ;

__attribute__((used)) static void test_readstream_object(object_data *data, size_t blocksize)
{
 git_oid id;
 git_odb *odb;
 git_odb_stream *stream;
 git_rawobj tmp;
 char buf[2048], *ptr = buf;
 size_t remain;
 int ret;

 write_object_files(data);

 cl_git_pass(git_odb_open(&odb, "test-objects"));
 cl_git_pass(git_oid_fromstr(&id, data->id));
 cl_git_pass(git_odb_open_rstream(&stream, &tmp.len, &tmp.type, odb, &id));

 remain = tmp.len;

 while (remain) {
  cl_assert((ret = git_odb_stream_read(stream, ptr, blocksize)) >= 0);
  if (ret == 0)
   break;

  cl_assert(remain >= (size_t)ret);
  remain -= ret;
  ptr += ret;
 }

 cl_assert(remain == 0);

 tmp.data = buf;

 cmp_objects(&tmp, data);

 git_odb_stream_free(stream);
 git_odb_free(odb);
}
