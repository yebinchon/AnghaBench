
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ntlm_client ;
typedef int ntlm_buf ;


 int read_string_ascii (char**,int *,int *,int ) ;
 int read_string_unicode (char**,int *,int *,int ) ;

__attribute__((used)) static inline bool read_string(
 char **out,
 ntlm_client *ntlm,
 ntlm_buf *message,
 uint8_t string_len,
 bool unicode)
{
 if (unicode)
  return read_string_unicode(out, ntlm, message, string_len);
 else
  return read_string_ascii(out, ntlm, message, string_len);
}
