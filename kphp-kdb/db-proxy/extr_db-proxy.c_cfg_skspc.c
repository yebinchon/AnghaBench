
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cfg_cur ;

__attribute__((used)) static int cfg_skspc (void) {
  while (*cfg_cur == ' ' || *cfg_cur == 9 || *cfg_cur == 10 || *cfg_cur == 13) {
    cfg_cur++;
  }
  return (unsigned char) *cfg_cur;
}
