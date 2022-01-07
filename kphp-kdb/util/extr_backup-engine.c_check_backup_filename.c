
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static int check_backup_filename (char *filename, int len, char *suffix, int suffix_len) {
  if (len <= 10+suffix_len || memcmp (filename + len - (10+suffix_len), suffix, suffix_len)) {
    return -1;
  }
  int i;
  for (i = 1; i <= 10; i++) {
    if (filename[len-i] < '0' || filename[len-i] > '9') {
      return -1;
    }
  }
  return 0;
}
