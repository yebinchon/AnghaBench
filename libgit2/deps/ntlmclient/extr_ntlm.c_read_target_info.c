
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
typedef int ntlm_client ;
struct TYPE_5__ {int len; int pos; } ;
typedef TYPE_1__ ntlm_buf ;







 int ntlm_client_set_errmsg (int *,char*) ;
 int read_int16 (int*,int *,TYPE_1__*) ;
 int read_string (char**,int *,TYPE_1__*,int,int) ;

__attribute__((used)) static inline bool read_target_info(
 char **server_out,
 char **domain_out,
 char **server_dns_out,
 char **domain_dns_out,
 ntlm_client *ntlm,
 ntlm_buf *message,
 bool unicode)
{
 uint16_t block_type, block_len;
 bool done = 0;

 *server_out = ((void*)0);
 *domain_out = ((void*)0);
 *server_dns_out = ((void*)0);
 *domain_dns_out = ((void*)0);

 while (!done && (message->len - message->pos) >= 4) {
  if (!read_int16(&block_type, ntlm, message) ||
   !read_int16(&block_len, ntlm, message)) {
   ntlm_client_set_errmsg(ntlm, "truncated target info block");
   return 0;
  }

  if (!block_type && block_len) {
   ntlm_client_set_errmsg(ntlm, "invalid target info block");
   return -1;
  }

  switch (block_type) {
  case 132:
   if (!read_string(domain_out, ntlm, message, block_len, unicode))
    return -1;
   break;
  case 129:
   if (!read_string(server_out, ntlm, message, block_len, unicode))
    return -1;
   break;
  case 131:
   if (!read_string(domain_dns_out, ntlm, message, block_len, unicode))
    return -1;
   break;
  case 128:
   if (!read_string(server_dns_out, ntlm, message, block_len, unicode))
    return -1;
   break;
  case 130:
   done = 1;
   break;
  default:
   ntlm_client_set_errmsg(ntlm, "unknown target info block type");
   return -1;
  }
 }

 if (message->len != message->pos) {
  ntlm_client_set_errmsg(ntlm,
   "invalid extra data in target info section");
  return 0;
 }

 return 1;
}
