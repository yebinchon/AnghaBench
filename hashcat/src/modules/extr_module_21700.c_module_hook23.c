
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u64 ;
typedef size_t u32 ;
typedef int secp256k1_pubkey ;
struct TYPE_5__ {scalar_t__ hooks_buf; } ;
typedef TYPE_1__ hc_device_param_t ;
struct TYPE_6__ {int hook_success; size_t* pubkey; size_t* ukey; } ;
typedef TYPE_2__ electrum_hook_t ;
struct TYPE_7__ {int ephemeral_pubkey_struct; } ;
typedef TYPE_3__ electrum_hook_salt_t ;


 int hc_secp256k1_pubkey_tweak_mul (int *,int *,size_t const) ;

void module_hook23 (hc_device_param_t *device_param, const void *hook_salts_buf, const u32 salt_pos, const u64 pw_pos)
{
  electrum_hook_t *hook_items = (electrum_hook_t *) device_param->hooks_buf;

  electrum_hook_salt_t *electrums = (electrum_hook_salt_t *) hook_salts_buf;
  electrum_hook_salt_t *electrum = &electrums[salt_pos];



  secp256k1_pubkey ephemeral_pubkey = electrum->ephemeral_pubkey_struct;



  electrum_hook_t *hook_item = &hook_items[pw_pos];

  hook_item->hook_success = 0;

  u32 *hook_pubkey = hook_item->pubkey;

  hook_pubkey[0] = hook_item->ukey[0];
  hook_pubkey[1] = hook_item->ukey[1];
  hook_pubkey[2] = hook_item->ukey[2];
  hook_pubkey[3] = hook_item->ukey[3];
  hook_pubkey[4] = hook_item->ukey[4];
  hook_pubkey[5] = hook_item->ukey[5];
  hook_pubkey[6] = hook_item->ukey[6];
  hook_pubkey[7] = hook_item->ukey[7];
  hook_pubkey[8] = 0;





  const size_t length = 33;

  bool multiply_success = hc_secp256k1_pubkey_tweak_mul (&ephemeral_pubkey, (u8 *) hook_pubkey, length);

  if (multiply_success == 0) return;




  hook_item->hook_success = 1;
}
