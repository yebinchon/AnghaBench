
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long log_wptr; long long log_start; int log_rptr; } ;


 TYPE_1__ R ;
 int assert (int) ;
 int crc32_partial (long long,long long,int ) ;
 int disable_crc32 ;
 int fprintf (int ,char*,long long,int ,int ) ;
 int log_crc32_complement ;
 long long log_crc32_pos ;
 int log_cur_pos () ;
 long long log_pos ;
 int stderr ;
 int tot_crc32 ;
 long long tot_crc32_pos ;

void relax_log_crc32 (int s) {
  assert (s >= 0);
  s = (s + 3) & -4;
  if (disable_crc32 & 2) {
    return;
  }
  assert (log_crc32_pos >= log_pos - (R.log_wptr - R.log_start));
  assert (s <= R.log_wptr - R.log_rptr);
  long long new_log_crc32_pos = log_cur_pos() + s;
  if (log_crc32_pos < tot_crc32_pos && new_log_crc32_pos >= tot_crc32_pos) {
    log_crc32_complement = crc32_partial (R.log_wptr - (log_pos - log_crc32_pos), tot_crc32_pos - log_crc32_pos, log_crc32_complement);
    log_crc32_pos = tot_crc32_pos;
    if (tot_crc32 != ~log_crc32_complement) {
      fprintf (stderr, "fatal: crc32 mismatch in binlog at position %lld: header expects %08x, actual %08x\n",
      tot_crc32_pos, tot_crc32, ~log_crc32_complement);
    }
    assert (tot_crc32 == ~log_crc32_complement);
  }
  log_crc32_complement = crc32_partial (R.log_wptr - (log_pos - log_crc32_pos), new_log_crc32_pos - log_crc32_pos, log_crc32_complement);
  log_crc32_pos = new_log_crc32_pos;
}
