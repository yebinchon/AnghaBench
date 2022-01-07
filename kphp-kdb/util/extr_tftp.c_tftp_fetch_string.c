
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int tftp_fetch_string (char *in, int avail_in) {
  int i = 0;
  while (i < avail_in && in[i]) {
    i++;
  }
  if (i >= avail_in) { return -1; }
  return i + 1;
}
