
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int binlogpos_filename ;
 int sprintf (int ,char*,char*,char*) ;
 int strlen (char*) ;
 char* szBinlogpos ;
 char* work_dir ;
 int work_dir_length ;
 int zmalloc (int) ;

__attribute__((used)) static void compute_binlogpos_filename (void) {
  int binlogpos_filename_length = work_dir_length + 1 + strlen (szBinlogpos);
  binlogpos_filename = zmalloc (binlogpos_filename_length + 1);
  assert (sprintf (binlogpos_filename, "%s/%s", work_dir, szBinlogpos) == binlogpos_filename_length);
}
