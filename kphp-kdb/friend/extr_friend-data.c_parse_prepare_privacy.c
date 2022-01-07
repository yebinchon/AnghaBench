
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int improve_privacy (int) ;
 int parse_privacy (char const*,int) ;

int parse_prepare_privacy (const char *text, int len, int owner_id) {
  int L = parse_privacy (text, len);
  if (L < 0) {
    return L;
  }
  return improve_privacy (owner_id);
}
