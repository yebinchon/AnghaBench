
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 scalar_t__ sprintf (int ,char*,char*,char*) ;
 scalar_t__ strlen (char*) ;
 char* szTmpDirName ;
 int tmp_dir ;
 scalar_t__ tmp_dir_length ;
 char* work_dir ;
 scalar_t__ work_dir_length ;
 int zmalloc (scalar_t__) ;

__attribute__((used)) static void compute_tmp_dir_name (void) {
  tmp_dir_length = work_dir_length + 1 + strlen (szTmpDirName);
  tmp_dir = zmalloc (tmp_dir_length + 1);
  assert (sprintf (tmp_dir, "%s/%s", work_dir, szTmpDirName) == tmp_dir_length);
}
