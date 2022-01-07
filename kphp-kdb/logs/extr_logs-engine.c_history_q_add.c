
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MAX_HISTORY ;
 scalar_t__ dl_strdup (char*) ;
 int dl_strfree (scalar_t__) ;
 size_t history_l ;
 scalar_t__* history_q ;
 size_t history_r ;

void history_q_add (char *s) {
  if (s == ((void*)0)) {
    return;
  }
  history_q[history_r++] = dl_strdup (s);
  if (history_r > MAX_HISTORY) {
    history_r = 0;
  }
  if (history_l >= history_r) {
    dl_strfree (history_q[history_l]);
    history_q[history_l++] = 0;
    if (history_l > MAX_HISTORY) {
      history_l = 0;
    }
  }
}
