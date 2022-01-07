
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_generic {int dummy; } ;
struct lev_crc32 {long long pos; int crc32; } ;


 int assert (int) ;
 int binlogname ;
 int disable_crc32 ;
 int fprintf (int ,char*,long long,int ,long long,...) ;
 int log_crc32_complement ;
 int log_cur_pos () ;
 long long log_headers_size ;
 long long log_start_pos ;
 int process_timestamp_event (struct lev_generic*) ;
 int relax_log_crc32 (int ) ;
 int stderr ;

__attribute__((used)) static void process_crc_event (struct lev_generic *E, int offset) {
  relax_log_crc32 (0);
  if (!(disable_crc32 & 2)) {
    long long cur_pos = log_cur_pos() + offset;
    if (~log_crc32_complement != ((struct lev_crc32 *) E)->crc32) {
      fprintf (stderr, "crc mismatch at binlog position %lld, file %s offset %lld\n", cur_pos, binlogname, cur_pos - log_start_pos + log_headers_size);
      assert (~log_crc32_complement == ((struct lev_crc32 *) E)->crc32);
    }
    if (cur_pos != ((struct lev_crc32 *) E)->pos) {
      fprintf (stderr, "position at binlog position %lld, file %s offset %lld: expected position %lld\n", cur_pos, binlogname, cur_pos - log_start_pos + log_headers_size, ((struct lev_crc32 *) E)->pos);
      assert (cur_pos == ((struct lev_crc32 *) E)->pos);
    }
  }
  process_timestamp_event (E);
}
