
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_crc32 {int crc32; int pos; } ;


 scalar_t__ dump_line_header (char*,char) ;
 int dumping_crc32 ;
 int fprintf (int ,char*,int ,int ) ;
 int out ;

void dump_crc32 (struct lev_crc32 *E) {
  if (!dumping_crc32) { return; }
  if (dump_line_header ("LEV_CRC32", '\t')) {
    return;
  }
  fprintf (out, "%lld\t0x%x\n", E->pos, E->crc32);
}
