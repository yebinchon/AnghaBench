
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char open_mode; int compress_level; void* compressed_block; void* uncompressed_block; } ;
typedef TYPE_1__ BGZF ;


 int BGZF_MAX_BLOCK_SIZE ;
 int Z_DEFAULT_COMPRESSION ;
 TYPE_1__* calloc (int,int) ;
 void* malloc (int ) ;

__attribute__((used)) static BGZF *bgzf_write_init(int compress_level)
{
 BGZF *fp;
 fp = calloc(1, sizeof(BGZF));
 fp->open_mode = 'w';
 fp->uncompressed_block = malloc(BGZF_MAX_BLOCK_SIZE);
 fp->compressed_block = malloc(BGZF_MAX_BLOCK_SIZE);
 fp->compress_level = compress_level < 0? Z_DEFAULT_COMPRESSION : compress_level;
 if (fp->compress_level > 9) fp->compress_level = Z_DEFAULT_COMPRESSION;
 return fp;
}
