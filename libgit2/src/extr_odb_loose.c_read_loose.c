
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int type; scalar_t__ len; int * data; } ;
typedef TYPE_1__ git_rawobj ;
struct TYPE_14__ {int size; scalar_t__ ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_OBJECT_INVALID ;
 int assert (int) ;
 int git_buf_dispose (TYPE_2__*) ;
 scalar_t__ git_buf_oom (TYPE_2__*) ;
 int git_futils_readbuffer (TYPE_2__*,scalar_t__) ;
 int is_zlib_compressed_data (unsigned char*,int ) ;
 int read_loose_packlike (TYPE_1__*,TYPE_2__*) ;
 int read_loose_standard (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int read_loose(git_rawobj *out, git_buf *loc)
{
 int error;
 git_buf obj = GIT_BUF_INIT;

 assert(out && loc);

 if (git_buf_oom(loc))
  return -1;

 out->data = ((void*)0);
 out->len = 0;
 out->type = GIT_OBJECT_INVALID;

 if ((error = git_futils_readbuffer(&obj, loc->ptr)) < 0)
  goto done;

 if (!is_zlib_compressed_data((unsigned char *)obj.ptr, obj.size))
  error = read_loose_packlike(out, &obj);
 else
  error = read_loose_standard(out, &obj);

done:
 git_buf_dispose(&obj);
 return error;
}
