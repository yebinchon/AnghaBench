
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char open_mode; int cache; void* compressed_block; void* uncompressed_block; } ;
typedef TYPE_1__ BGZF ;


 int BGZF_MAX_BLOCK_SIZE ;
 int cache ;
 TYPE_1__* calloc (int,int) ;
 int kh_init (int ) ;
 void* malloc (int ) ;

__attribute__((used)) static BGZF *bgzf_read_init()
{
 BGZF *fp;
 fp = calloc(1, sizeof(BGZF));
 fp->open_mode = 'r';
 fp->uncompressed_block = malloc(BGZF_MAX_BLOCK_SIZE);
 fp->compressed_block = malloc(BGZF_MAX_BLOCK_SIZE);



 return fp;
}
