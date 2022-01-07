
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int hashcat_ctx_t ;






 int hlfmt_user_hashcat (int *,char*,int const,char**,int*) ;
 int hlfmt_user_passwd (int *,char*,int const,char**,int*) ;
 int hlfmt_user_pwdump (int *,char*,int const,char**,int*) ;
 int hlfmt_user_shadow (int *,char*,int const,char**,int*) ;

void hlfmt_user (hashcat_ctx_t *hashcat_ctx, u32 hashfile_format, char *line_buf, const int line_len, char **userbuf_pos, int *userbuf_len)
{
  switch (hashfile_format)
  {
    case 131: hlfmt_user_hashcat (hashcat_ctx, line_buf, line_len, userbuf_pos, userbuf_len); break;
    case 129: hlfmt_user_pwdump (hashcat_ctx, line_buf, line_len, userbuf_pos, userbuf_len); break;
    case 130: hlfmt_user_passwd (hashcat_ctx, line_buf, line_len, userbuf_pos, userbuf_len); break;
    case 128: hlfmt_user_shadow (hashcat_ctx, line_buf, line_len, userbuf_pos, userbuf_len); break;
  }
}
