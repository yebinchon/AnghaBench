
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_PASSES ;
 int assert (int) ;
 int compute_max_uid (int,int ) ;
 int max_uid ;
 int* pass_min_uid ;
 int pass_threshold ;
 int passes ;
 scalar_t__ temp_binlog_directory ;
 int vkprintf (int,char*,int) ;

int prepare_pass_splitting (void) {
  int i, uid = 0;
  assert (passes > 0 && passes <= MAX_PASSES);
  for (i = 0; i < passes; i++) {
    pass_min_uid[i] = uid;
    uid = compute_max_uid (uid, pass_threshold);
  }
  pass_min_uid[i] = uid;
  assert (uid == max_uid + 1);
  if (temp_binlog_directory) {
    if (i <= 2) {
      vkprintf (1, "only %d passes needed, ignoring temporary directory\n", i);
      temp_binlog_directory = 0;
    }
  }
  return i;
}
