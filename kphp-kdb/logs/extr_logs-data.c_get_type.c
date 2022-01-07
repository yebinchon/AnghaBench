
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_EVENT_SIZE ;
 int sscanf (char*,char*,int*,int*) ;
 scalar_t__ strcmp (char*,int ) ;
 int t_string ;
 int * ttt ;

inline int get_type (char *b) {
  int i;
  for (i = 0; i < 4; i++) {
    if (strcmp (b, ttt[i]) == 0) {
      return i;
    }
  }
  int max_len, end = -1;
  if (sscanf (b, "string[%d]%n", &max_len, &end) == 1 && end != -1 && !b[end] && 1 <= max_len && max_len < MAX_EVENT_SIZE) {
    return t_string + max_len;
  }

  return -1;
}
