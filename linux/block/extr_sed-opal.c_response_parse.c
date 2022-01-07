
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct parsed_resp {int num; struct opal_resp_tok* toks; } ;
struct opal_resp_tok {int dummy; } ;
struct TYPE_6__ {int length; } ;
struct TYPE_5__ {int length; } ;
struct TYPE_4__ {int length; } ;
struct opal_header {TYPE_3__ subpkt; TYPE_2__ pkt; TYPE_1__ cp; } ;
typedef scalar_t__ ssize_t ;


 int EFAULT ;
 int EINVAL ;
 int IO_BUFFER_LENGTH ;
 scalar_t__ const LONG_ATOM_BYTE ;
 scalar_t__ const MEDIUM_ATOM_BYTE ;
 scalar_t__ const SHORT_ATOM_BYTE ;
 scalar_t__ const TINY_ATOM_BYTE ;
 scalar_t__ be32_to_cpu (int ) ;
 int pr_debug (char*,scalar_t__,scalar_t__,scalar_t__) ;
 int print_buffer (scalar_t__ const*,int) ;
 scalar_t__ response_parse_long (struct opal_resp_tok*,scalar_t__ const*) ;
 scalar_t__ response_parse_medium (struct opal_resp_tok*,scalar_t__ const*) ;
 scalar_t__ response_parse_short (struct opal_resp_tok*,scalar_t__ const*) ;
 scalar_t__ response_parse_tiny (struct opal_resp_tok*,scalar_t__ const*) ;
 scalar_t__ response_parse_token (struct opal_resp_tok*,scalar_t__ const*) ;

__attribute__((used)) static int response_parse(const u8 *buf, size_t length,
     struct parsed_resp *resp)
{
 const struct opal_header *hdr;
 struct opal_resp_tok *iter;
 int num_entries = 0;
 int total;
 ssize_t token_length;
 const u8 *pos;
 u32 clen, plen, slen;

 if (!buf)
  return -EFAULT;

 if (!resp)
  return -EFAULT;

 hdr = (struct opal_header *)buf;
 pos = buf;
 pos += sizeof(*hdr);

 clen = be32_to_cpu(hdr->cp.length);
 plen = be32_to_cpu(hdr->pkt.length);
 slen = be32_to_cpu(hdr->subpkt.length);
 pr_debug("Response size: cp: %u, pkt: %u, subpkt: %u\n",
   clen, plen, slen);

 if (clen == 0 || plen == 0 || slen == 0 ||
     slen > IO_BUFFER_LENGTH - sizeof(*hdr)) {
  pr_debug("Bad header length. cp: %u, pkt: %u, subpkt: %u\n",
    clen, plen, slen);
  print_buffer(pos, sizeof(*hdr));
  return -EINVAL;
 }

 if (pos > buf + length)
  return -EFAULT;

 iter = resp->toks;
 total = slen;
 print_buffer(pos, total);
 while (total > 0) {
  if (pos[0] <= TINY_ATOM_BYTE)
   token_length = response_parse_tiny(iter, pos);
  else if (pos[0] <= SHORT_ATOM_BYTE)
   token_length = response_parse_short(iter, pos);
  else if (pos[0] <= MEDIUM_ATOM_BYTE)
   token_length = response_parse_medium(iter, pos);
  else if (pos[0] <= LONG_ATOM_BYTE)
   token_length = response_parse_long(iter, pos);
  else
   token_length = response_parse_token(iter, pos);

  if (token_length < 0)
   return token_length;

  pos += token_length;
  total -= token_length;
  iter++;
  num_entries++;
 }

 resp->num = num_entries;

 return 0;
}
