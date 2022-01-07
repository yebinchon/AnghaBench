
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int raw_size; int data_size; int data_crc32; scalar_t__ finished; int header_seq_num; int modified; } ;


 TYPE_1__* KHDR ;
 int SEEK_SET ;
 int assert (int) ;
 int binlog_headers ;
 int fix_kfs_header_crc32 (TYPE_1__*) ;
 int kfs_Hdr ;
 scalar_t__ lseek (int ,int ,int ) ;
 int targ_fd ;
 int time (int ) ;
 int tot_crc32 ;
 scalar_t__ wr_bytes ;
 int write (int ,int ,int) ;

void write_binlog_headers (void) {
  int i;

  if (!KHDR) {
    return;
  }

  KHDR->modified = time (0);
  ++KHDR->header_seq_num;
  KHDR->finished = 0;
  KHDR->data_crc32 = ~tot_crc32;
  KHDR->data_size += wr_bytes;
  KHDR->raw_size += wr_bytes;

  fix_kfs_header_crc32 (KHDR);

  assert (lseek (targ_fd, 0, SEEK_SET) == 0);
  for (i = 0; i < binlog_headers; i++) {
    assert (write (targ_fd, kfs_Hdr, 4096) == 4096);
  }
}
