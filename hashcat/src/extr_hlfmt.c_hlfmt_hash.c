
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int hashcat_ctx_t ;






 int hlfmt_hash_hashcat (int *,char*,int const,char**,int*) ;
 int hlfmt_hash_passwd (int *,char*,int const,char**,int*) ;
 int hlfmt_hash_pwdump (int *,char*,int const,char**,int*) ;
 int hlfmt_hash_shadow (int *,char*,int const,char**,int*) ;

void hlfmt_hash (hashcat_ctx_t *hashcat_ctx, u32 hashfile_format, char *line_buf, const int line_len, char **hashbuf_pos, int *hashbuf_len)
{
  switch (hashfile_format)
  {
    case 131: hlfmt_hash_hashcat (hashcat_ctx, line_buf, line_len, hashbuf_pos, hashbuf_len); break;
    case 129: hlfmt_hash_pwdump (hashcat_ctx, line_buf, line_len, hashbuf_pos, hashbuf_len); break;
    case 130: hlfmt_hash_passwd (hashcat_ctx, line_buf, line_len, hashbuf_pos, hashbuf_len); break;
    case 128: hlfmt_hash_shadow (hashcat_ctx, line_buf, line_len, hashbuf_pos, hashbuf_len); break;
  }
}
