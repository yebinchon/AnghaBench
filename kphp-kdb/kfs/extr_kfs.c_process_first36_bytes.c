
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lev_start {int type; } ;
struct lev_rotate_from {int crc32; int timestamp; int prev_log_hash; int cur_log_hash; int cur_log_pos; } ;
struct kfs_file_info {char* filename; TYPE_1__* khdr; int log_pos; } ;
struct TYPE_2__ {int log_pos_crc32; int prev_log_time; int prev_log_hash; int file_id_hash; } ;




 int assert (int) ;
 int close (int) ;
 int fprintf (int ,char*,char*,int,...) ;
 int stderr ;

__attribute__((used)) static int process_first36_bytes (struct kfs_file_info *FI, int fd, int r, struct lev_start *E) {
  switch (E->type) {
    case 128:
      assert (r >= sizeof (struct lev_start) - 4);
      FI->log_pos = 0;
      break;
    case 129:
      assert (r >= sizeof (struct lev_rotate_from));
      FI->log_pos = ((struct lev_rotate_from *)E)->cur_log_pos;
      if (FI->khdr && FI->khdr->file_id_hash != ((struct lev_rotate_from *)E)->cur_log_hash) {
        fprintf (stderr, "warning: binlog file %s has different hash in header (%016llX) and continue record (%016llX)\n", FI->filename, FI->khdr->file_id_hash, ((struct lev_rotate_from *)E)->cur_log_hash);
        assert (close (fd) >= 0);
        return -2;
      }
      if (FI->khdr && FI->khdr->prev_log_hash != ((struct lev_rotate_from *)E)->prev_log_hash) {
        fprintf (stderr, "warning: binlog file %s has different hash of previous binlog in header (%016llX) and continue record (%016llX)\n", FI->filename, FI->khdr->prev_log_hash, ((struct lev_rotate_from *)E)->prev_log_hash);
        assert (close (fd) >= 0);
        return -2;
      }
      if (FI->khdr && FI->khdr->log_pos_crc32 != ((struct lev_rotate_from *)E)->crc32) {
        fprintf (stderr, "warning: binlog file %s has different crc32 in header (%08X) and continue record (%08X)\n", FI->filename, FI->khdr->log_pos_crc32, ((struct lev_rotate_from *)E)->crc32);
        assert (close (fd) >= 0);
        return -2;
      }
      if (FI->khdr && FI->khdr->prev_log_time != ((struct lev_rotate_from *)E)->timestamp) {
        fprintf (stderr, "warning: binlog file %s has different timestamp in header (%d) and continue record (%d)\n", FI->filename, FI->khdr->prev_log_time, ((struct lev_rotate_from *)E)->timestamp);
        assert (close (fd) >= 0);
        return -2;
      }
      break;
    default:
      fprintf (stderr, "warning: binlog file %s begins with wrong entry type %08x\n", FI->filename, E->type);
      assert (close (fd) >= 0);
      return -2;
  }
  return 0;
}
