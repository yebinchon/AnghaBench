
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int keyver; int eapol_len; size_t* eapol; size_t* orig_mac_ap; size_t* orig_mac_sta; size_t* orig_nonce_ap; size_t* orig_nonce_sta; size_t* keymic; int message_pair; } ;
typedef TYPE_1__ wpa_eapol_t ;
typedef size_t u32 ;
struct TYPE_9__ {size_t const digests_offset; int salt_len; size_t* salt_buf; } ;
typedef TYPE_2__ salt_t ;
struct TYPE_10__ {int essid_len; int keyver; int eapol_len; int keymic; int nonce_sta; int nonce_ap; int mac_sta; int mac_ap; int eapol; int message_pair; int essid; int version; int signature; } ;
typedef TYPE_3__ hccapx_t ;
struct TYPE_11__ {void* esalts_buf; TYPE_2__* salts_buf; } ;
typedef TYPE_4__ hashes_t ;


 int HCCAPX_SIGNATURE ;
 int HCCAPX_VERSION ;
 size_t byte_swap_32 (size_t) ;
 int memcpy (int ,size_t*,int) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void to_hccapx_t (const hashes_t *hashes, hccapx_t *hccapx, const u32 salt_pos, const u32 digest_pos)
{
  const salt_t *salts_buf = hashes->salts_buf;
  const void *esalts_buf = hashes->esalts_buf;

  memset (hccapx, 0, sizeof (hccapx_t));

  hccapx->signature = HCCAPX_SIGNATURE;
  hccapx->version = HCCAPX_VERSION;

  const salt_t *salt = &salts_buf[salt_pos];

  const u32 digest_cur = salt->digests_offset + digest_pos;

  hccapx->essid_len = salt->salt_len;

  memcpy (hccapx->essid, salt->salt_buf, hccapx->essid_len);

  wpa_eapol_t *wpa_eapols = (wpa_eapol_t *) esalts_buf;
  wpa_eapol_t *wpa_eapol = &wpa_eapols[digest_cur];

  hccapx->message_pair = wpa_eapol->message_pair;
  hccapx->keyver = wpa_eapol->keyver;

  hccapx->eapol_len = wpa_eapol->eapol_len;

  if (wpa_eapol->keyver != 1)
  {
    u32 eapol_tmp[64] = { 0 };

    for (u32 i = 0; i < 64; i++)
    {
      eapol_tmp[i] = byte_swap_32 (wpa_eapol->eapol[i]);
    }

    memcpy (hccapx->eapol, eapol_tmp, wpa_eapol->eapol_len);
  }
  else
  {
    memcpy (hccapx->eapol, wpa_eapol->eapol, wpa_eapol->eapol_len);
  }

  memcpy (hccapx->mac_ap, wpa_eapol->orig_mac_ap, 6);
  memcpy (hccapx->mac_sta, wpa_eapol->orig_mac_sta, 6);
  memcpy (hccapx->nonce_ap, wpa_eapol->orig_nonce_ap, 32);
  memcpy (hccapx->nonce_sta, wpa_eapol->orig_nonce_sta, 32);

  if (wpa_eapol->keyver != 1)
  {
    u32 digest_tmp[4];

    digest_tmp[0] = byte_swap_32 (wpa_eapol->keymic[0]);
    digest_tmp[1] = byte_swap_32 (wpa_eapol->keymic[1]);
    digest_tmp[2] = byte_swap_32 (wpa_eapol->keymic[2]);
    digest_tmp[3] = byte_swap_32 (wpa_eapol->keymic[3]);

    memcpy (hccapx->keymic, digest_tmp, 16);
  }
  else
  {
    memcpy (hccapx->keymic, wpa_eapol->keymic, 16);
  }
}
