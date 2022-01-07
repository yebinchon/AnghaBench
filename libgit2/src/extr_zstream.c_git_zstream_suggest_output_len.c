
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ in_len; } ;
typedef TYPE_1__ git_zstream ;


 scalar_t__ ZSTREAM_BUFFER_MIN_EXTRA ;
 scalar_t__ ZSTREAM_BUFFER_SIZE ;

size_t git_zstream_suggest_output_len(git_zstream *zstream)
{
 if (zstream->in_len > ZSTREAM_BUFFER_SIZE)
  return ZSTREAM_BUFFER_SIZE;
 else if (zstream->in_len > ZSTREAM_BUFFER_MIN_EXTRA)
  return zstream->in_len;
 else
  return ZSTREAM_BUFFER_MIN_EXTRA;
}
