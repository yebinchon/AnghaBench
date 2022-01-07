
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int AES128_decrypt_cbc (int *,int *,int *,int *) ;
 int base64_decode (int ,int const*,int const,int *) ;
 int base64_to_int ;
 int byte_swap_32 (int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void juniper_decrypt_hash (const u8 *in, const int in_len, u8 *out)
{


  u8 base64_buf[100] = { 0 };

  base64_decode (base64_to_int, (const u8 *) in, in_len, base64_buf);



  u32 juniper_iv[4] = { 0 };

  memcpy (juniper_iv, base64_buf, 12);

  memcpy (out, juniper_iv, 12);



  u32 juniper_key[4] = { 0 };

  juniper_key[0] = byte_swap_32 (0xa6707a7e);
  juniper_key[1] = byte_swap_32 (0x8df91059);
  juniper_key[2] = byte_swap_32 (0xdea70ae5);
  juniper_key[3] = byte_swap_32 (0x2f9c2442);



  u32 *in_ptr = (u32 *) (base64_buf + 12);
  u32 *out_ptr = (u32 *) (out + 12);

  AES128_decrypt_cbc (juniper_key, juniper_iv, in_ptr, out_ptr);
}
