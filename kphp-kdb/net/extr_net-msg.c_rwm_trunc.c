
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_message {int total_bytes; } ;


 int rwm_fetch_data_back (struct raw_message*,int ,int) ;

int rwm_trunc (struct raw_message *raw, int len) {
  if (len >= raw->total_bytes) {
    return raw->total_bytes;
  }
  rwm_fetch_data_back (raw, 0, raw->total_bytes - len);
  return len;
}
