
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t in_len; int zerr; void const* in; } ;
typedef TYPE_1__ git_zstream ;


 int Z_OK ;

int git_zstream_set_input(git_zstream *zstream, const void *in, size_t in_len)
{
 zstream->in = in;
 zstream->in_len = in_len;
 zstream->zerr = Z_OK;
 return 0;
}
