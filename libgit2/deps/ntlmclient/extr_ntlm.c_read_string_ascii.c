
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ntlm_client ;
struct TYPE_3__ {size_t pos; int * buf; } ;
typedef TYPE_1__ ntlm_buf ;


 char* malloc (int) ;
 int memcpy (char*,int *,int) ;
 int ntlm_client_set_errmsg (int *,char*) ;

__attribute__((used)) static inline bool read_string_ascii(
 char **out,
 ntlm_client *ntlm,
 ntlm_buf *message,
 uint8_t string_len)
{
 char *str;

 if ((str = malloc(string_len + 1)) == ((void*)0)) {
  ntlm_client_set_errmsg(ntlm, "out of memory");
  return 0;
 }

 memcpy(str, &message->buf[message->pos], string_len);
 str[string_len] = '\0';

 message->pos += string_len;

 *out = str;
 return 1;
}
