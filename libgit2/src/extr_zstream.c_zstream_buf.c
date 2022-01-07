
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_zstream_t ;
typedef int git_zstream ;
struct TYPE_4__ {size_t asize; size_t size; char* ptr; } ;
typedef TYPE_1__ git_buf ;


 int GIT_ZSTREAM_INIT ;
 int git_buf_grow_by (TYPE_1__*,size_t) ;
 int git_zstream_done (int *) ;
 int git_zstream_free (int *) ;
 int git_zstream_get_output (char*,size_t*,int *) ;
 int git_zstream_init (int *,int ) ;
 int git_zstream_set_input (int *,void const*,size_t) ;
 size_t git_zstream_suggest_output_len (int *) ;

__attribute__((used)) static int zstream_buf(git_buf *out, const void *in, size_t in_len, git_zstream_t type)
{
 git_zstream zs = GIT_ZSTREAM_INIT;
 int error = 0;

 if ((error = git_zstream_init(&zs, type)) < 0)
  return error;

 if ((error = git_zstream_set_input(&zs, in, in_len)) < 0)
  goto done;

 while (!git_zstream_done(&zs)) {
  size_t step = git_zstream_suggest_output_len(&zs), written;

  if ((error = git_buf_grow_by(out, step)) < 0)
   goto done;

  written = out->asize - out->size;

  if ((error = git_zstream_get_output(
    out->ptr + out->size, &written, &zs)) < 0)
   goto done;

  out->size += written;
 }


 if (out->size < out->asize)
  out->ptr[out->size] = '\0';

done:
 git_zstream_free(&zs);
 return error;
}
