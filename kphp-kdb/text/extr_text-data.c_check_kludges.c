
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* skip_kludges (char*,int) ;

char *check_kludges (char *text, int len) {
  return skip_kludges (text, len);
}
