
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; int s_maxbytes; } ;
struct fs_context {int dummy; } ;


 int MAX_LFS_FILESIZE ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int SPUFS_MAGIC ;
 int spufs_create_root (struct super_block*,struct fs_context*) ;
 int spufs_ops ;

__attribute__((used)) static int spufs_fill_super(struct super_block *sb, struct fs_context *fc)
{
 sb->s_maxbytes = MAX_LFS_FILESIZE;
 sb->s_blocksize = PAGE_SIZE;
 sb->s_blocksize_bits = PAGE_SHIFT;
 sb->s_magic = SPUFS_MAGIC;
 sb->s_op = &spufs_ops;

 return spufs_create_root(sb, fc);
}
