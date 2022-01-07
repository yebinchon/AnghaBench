
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udp_message {int our_ip_idx; } ;
struct process_id {scalar_t__ ip; } ;
struct TYPE_2__ {scalar_t__ ip; } ;


 TYPE_1__ PID ;
 int UDP_ALLOW_ENC ;
 int UDP_ALLOW_UNENC ;
 int UDP_CRYPTO_AES ;
 int UDP_CRYPTO_NONE ;
 int get_crypto_key_id () ;
 int vkprintf (int,char*,int) ;

int default_udp_check_perm ( struct process_id *remote_pid, int crypto_flags, struct udp_message *msg) {
  vkprintf (3, "default_udp_check_perm: crypto_flags = 0x%02x\n", crypto_flags & 0xff);

  int allow_unenc = UDP_ALLOW_UNENC;
  int crypto_mode = crypto_flags & 127;
  if (crypto_mode != UDP_CRYPTO_NONE && crypto_mode != UDP_CRYPTO_AES) {
    vkprintf (1, "unknown crypto protocol %d\n", crypto_mode);
    return -1;
  }
  if (remote_pid->ip != PID.ip) {
    allow_unenc = 0;
  }
  if (!(crypto_flags & 128)) {
    allow_unenc = 0;
  }
  if (msg->our_ip_idx != 1 && msg->our_ip_idx != 2) {
    allow_unenc = 0;
  }
  int h1 = (crypto_flags >> 8) & 0xfff;


  int allow_enc = UDP_ALLOW_ENC;
  if (crypto_mode == UDP_CRYPTO_NONE) {
    allow_enc = 0;
  }

  if ((h1 != (get_crypto_key_id () & 0xfff)) ) {
    allow_enc = 0;
  }
  vkprintf (3, "check_perm returns %d\n", allow_unenc | allow_enc);
  return allow_unenc | allow_enc;
}
