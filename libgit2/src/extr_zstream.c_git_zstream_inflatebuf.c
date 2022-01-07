
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_ZSTREAM_INFLATE ;
 int zstream_buf (int *,void const*,size_t,int ) ;

int git_zstream_inflatebuf(git_buf *out, const void *in, size_t in_len)
{
 return zstream_buf(out, in, in_len, GIT_ZSTREAM_INFLATE);
}
