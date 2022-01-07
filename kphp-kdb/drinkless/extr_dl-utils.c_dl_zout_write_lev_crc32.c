
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct lev_crc32 {int crc32; int pos; int timestamp; } ;
struct TYPE_5__ {int crc32_complement; int written; } ;
typedef TYPE_1__ dl_zout ;


 int LEV_CRC32 ;
 struct lev_crc32* dl_zout_alloc_log_event (TYPE_1__*,int ,int) ;
 int dl_zout_flush (TYPE_1__*) ;
 int now ;

struct lev_crc32 *dl_zout_write_lev_crc32 (dl_zout *f) {
  dl_zout_flush (f);

  struct lev_crc32 *E = dl_zout_alloc_log_event (f, LEV_CRC32, sizeof (struct lev_crc32));
  E->timestamp = now;
  E->pos = f->written;
  E->crc32 = ~f->crc32_complement;

  return E;
}
