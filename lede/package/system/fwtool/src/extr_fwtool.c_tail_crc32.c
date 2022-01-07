
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct data_buf {int cur_len; scalar_t__ cur; scalar_t__ prev; } ;


 int BUFLEN ;
 int crc32_block (int ,scalar_t__,int ,int ) ;
 int crc_table ;

__attribute__((used)) static uint32_t
tail_crc32(struct data_buf *dbuf, uint32_t crc32)
{
 if (dbuf->prev)
  crc32 = crc32_block(crc32, dbuf->prev, BUFLEN, crc_table);

 return crc32_block(crc32, dbuf->cur, dbuf->cur_len, crc_table);
}
