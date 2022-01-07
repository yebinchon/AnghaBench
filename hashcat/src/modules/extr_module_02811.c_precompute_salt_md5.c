
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int md5_complete_no_limit (int *,int const*,int const) ;
 int u32_to_hex (int ,int *) ;

__attribute__((used)) static void precompute_salt_md5 (const u32 *salt_buf, const u32 salt_len, u8 *salt_pc)
{
  u32 digest[4] = { 0 };

  md5_complete_no_limit (digest, salt_buf, salt_len);

  u32_to_hex (digest[0], salt_pc + 0);
  u32_to_hex (digest[1], salt_pc + 8);
  u32_to_hex (digest[2], salt_pc + 16);
  u32_to_hex (digest[3], salt_pc + 24);
}
