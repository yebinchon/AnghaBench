
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int q_info ;
typedef int kfs_file_handle_t ;
struct TYPE_4__ {int log_pos1_crc32; int log_pos1; int log_timestamp; int use_stemmer; int created_at; } ;
struct TYPE_3__ {int prev_bucket; int next_bucket; scalar_t__ prev_used; scalar_t__ next_used; } ;


 int H_MUL ;
 int MAX_S_LEN ;
 int STAT_ST ;
 char* alph ;
 int alph_n ;
 int common_spelling_errors ;
 void* dl_malloc0 (int) ;
 int h_id ;
 int h_pref ;
 int h_word ;
 TYPE_2__ header ;
 int hmap_ll_int_init (int *) ;
 int* hp ;
 int jump_log_crc32 ;
 int jump_log_pos ;
 int jump_log_ts ;
 int load_index (int ) ;
 int log_ts_exact_interval ;
 double** prob ;
 int process_errors (int ,double) ;
 TYPE_1__* q_entry ;
 void* q_rev ;
 int qr ;
 int ratingT ;
 int short_distance_errors ;
 int stem_init () ;
 int try_init_local_uid () ;
 int use_stemmer ;

int init_all (kfs_file_handle_t Index) {
  log_ts_exact_interval = 1;

  hmap_ll_int_init (&h_pref);
  hmap_ll_int_init (&h_id);




  int f = load_index (Index);
  ratingT = header.created_at;
  use_stemmer = header.use_stemmer;

  jump_log_ts = header.log_timestamp;
  jump_log_pos = header.log_pos1;
  jump_log_crc32 = header.log_pos1_crc32;

  int i;
  qr = STAT_ST;
  q_entry = dl_malloc0 (sizeof (q_info) * (STAT_ST + qr));
  q_rev = dl_malloc0 (sizeof (int) * qr);
  for (i = 1; i < STAT_ST; i++) {
    q_entry[i].prev_bucket = i;
    q_entry[i].next_bucket = i;
  }
  q_entry[0].next_used = 0;
  q_entry[0].prev_used = 0;

  hp[0] = 1;
  for (i = 1; i < MAX_S_LEN; i++) {
    hp[i] = hp[i - 1] * H_MUL;
  }
  alph[alph_n++] = '?';


  process_errors (short_distance_errors, 0.5);
  process_errors (common_spelling_errors, 1.0);

  int j;
  for (i = 0; i < 128; i++) {
    for (j = 0; j < 128; j++) {
      prob[i][j] = (1.0 + prob[i][j]) * 0.5;
    }
  }

  stem_init();

  if (f) {
    try_init_local_uid();
  }
  return 1;
}
