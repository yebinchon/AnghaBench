
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwimage_trailer {int crc32; } ;


 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int ) ;
 int crc32_block (int ,void*,int,int ) ;
 int crc_table ;

__attribute__((used)) static void
trailer_update_crc(struct fwimage_trailer *tr, void *buf, int len)
{
 tr->crc32 = cpu_to_be32(crc32_block(be32_to_cpu(tr->crc32), buf, len, crc_table));
}
