
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int raw_size; int total_copies; int schema_id; int extra_bytes; int split_min; int split_max; int split_mod; int schema_extra; int slice_creator; int creator; int modified; int created; int slice_created; int replica_created; int slice_name; int table_name; void* table_id_hash; void* slice_id_hash; void* replica_id_hash; void* file_id_hash; int header_seq_num; int kfs_file_type; } ;


 TYPE_1__* KHDR ;
 int SEEK_SET ;




 int assert (int) ;
 int binlog_headers ;
 int create_kfs_header_basic (TYPE_1__*) ;
 char* default_progname ;
 int fix_kfs_header_crc32 (TYPE_1__*) ;
 TYPE_1__* kfs_Hdr ;
 int kfs_binlog ;
 void* kfs_random_hash () ;
 void* kfs_string_hash (char*) ;
 scalar_t__ lseek (int ,int ,int ) ;
 int memcpy (int ,char*,int) ;
 int split_max ;
 int split_min ;
 int split_mod ;
 int sprintf (int ,char*,int) ;
 scalar_t__ stdout_mode ;
 int strcpy (int ,char*) ;
 int table_format ;
 int targ_fd ;
 int time (int ) ;
 int write (int ,TYPE_1__*,int) ;

void create_binlog_headers0 (int schema_id, char *schema_str, int schema_strlen) {
  assert (!binlog_headers && !KHDR);

  if (1 || stdout_mode) {
    return;
  }

  binlog_headers = 2;
  create_kfs_header_basic (kfs_Hdr);

  KHDR = kfs_Hdr;

  KHDR->kfs_file_type = kfs_binlog;
  KHDR->modified = time (0);
  KHDR->header_seq_num++;

  KHDR->file_id_hash = kfs_random_hash ();
  KHDR->replica_id_hash = KHDR->slice_id_hash = kfs_random_hash ();

  switch (table_format) {
  case 131:
  case 130:
    KHDR->table_id_hash = kfs_string_hash ("messages");
    strcpy (KHDR->table_name, "messages");
    sprintf (KHDR->slice_name, "messages%03d", split_min);
    break;
  case 128:
  case 129:
    KHDR->table_id_hash = kfs_string_hash ("statuses");
    strcpy (KHDR->table_name, "statuses");
    sprintf (KHDR->slice_name, "statuses%03d", split_min);
    break;
  default:
    assert (0);
  }

  KHDR->raw_size = 8192;
  KHDR->replica_created = KHDR->slice_created = KHDR->created = KHDR->modified;

  KHDR->total_copies = 1;

  strcpy (KHDR->creator, default_progname);
  strcpy (KHDR->slice_creator, default_progname);

  KHDR->schema_id = schema_id;
  if (schema_str) {
    KHDR->extra_bytes = schema_strlen;
    if (KHDR->extra_bytes > 512) {
      KHDR->extra_bytes = 512;
    }
    memcpy (KHDR->schema_extra, schema_str, KHDR->extra_bytes);
  }

  KHDR->split_mod = split_mod;
  KHDR->split_min = split_min;
  KHDR->split_max = split_max;

  fix_kfs_header_crc32 (KHDR);

  assert (lseek (targ_fd, 0, SEEK_SET) == 0);
  assert (write (targ_fd, kfs_Hdr, 4096) == 4096);
  assert (write (targ_fd, kfs_Hdr, 4096) == 4096);
}
