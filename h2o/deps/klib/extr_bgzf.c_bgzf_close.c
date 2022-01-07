
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char open_mode; struct TYPE_8__* compressed_block; struct TYPE_8__* uncompressed_block; int fp; int errcode; } ;
typedef TYPE_1__ BGZF ;


 int BGZF_ERR_IO ;
 int _bgzf_close (int ) ;
 scalar_t__ bgzf_flush (TYPE_1__*) ;
 int deflate_block (TYPE_1__*,int ) ;
 int fclose (int ) ;
 scalar_t__ fflush (int ) ;
 int free (TYPE_1__*) ;
 int free_cache (TYPE_1__*) ;
 int fwrite (TYPE_1__*,int,int,int ) ;

int bgzf_close(BGZF* fp)
{
 int ret, count, block_length;
 if (fp == 0) return -1;
 if (fp->open_mode == 'w') {
  if (bgzf_flush(fp) != 0) return -1;
  block_length = deflate_block(fp, 0);
  count = fwrite(fp->compressed_block, 1, block_length, fp->fp);
  if (fflush(fp->fp) != 0) {
   fp->errcode |= BGZF_ERR_IO;
   return -1;
  }
 }
 ret = fp->open_mode == 'w'? fclose(fp->fp) : _bgzf_close(fp->fp);
 if (ret != 0) return -1;
 free(fp->uncompressed_block);
 free(fp->compressed_block);
 free_cache(fp);
 free(fp);
 return 0;
}
