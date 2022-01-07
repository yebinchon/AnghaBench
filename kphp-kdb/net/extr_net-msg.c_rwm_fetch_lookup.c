
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_message {int dummy; } ;


 int rwm_process (struct raw_message*,int,int ,void**) ;
 int rwm_process_memcpy ;
 int rwm_process_nop ;

int rwm_fetch_lookup (struct raw_message *raw, void *buf, int bytes) {
  if (buf) {
    return rwm_process (raw, bytes, rwm_process_memcpy, &buf);
  } else {
    return rwm_process (raw, bytes, rwm_process_nop, 0);
  }
}
