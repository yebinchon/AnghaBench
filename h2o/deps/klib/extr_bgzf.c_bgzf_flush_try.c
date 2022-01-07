
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_4__ {scalar_t__ block_offset; } ;
typedef TYPE_1__ BGZF ;


 scalar_t__ BGZF_BLOCK_SIZE ;
 int bgzf_flush (TYPE_1__*) ;

int bgzf_flush_try(BGZF *fp, ssize_t size)
{
 if (fp->block_offset + size > BGZF_BLOCK_SIZE)
  return bgzf_flush(fp);
 return -1;
}
