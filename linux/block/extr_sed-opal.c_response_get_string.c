
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct parsed_resp {int dummy; } ;
struct opal_resp_tok {scalar_t__ type; int width; char* pos; size_t len; } ;


 scalar_t__ IS_ERR (struct opal_resp_tok const*) ;
 scalar_t__ OPAL_DTA_TOKENID_BYTESTRING ;




 int pr_debug (char*) ;
 struct opal_resp_tok* response_get_token (struct parsed_resp const*,int) ;

__attribute__((used)) static size_t response_get_string(const struct parsed_resp *resp, int n,
      const char **store)
{
 u8 skip;
 const struct opal_resp_tok *tok;

 *store = ((void*)0);
 tok = response_get_token(resp, n);
 if (IS_ERR(tok))
  return 0;

 if (tok->type != OPAL_DTA_TOKENID_BYTESTRING) {
  pr_debug("Token is not a byte string!\n");
  return 0;
 }

 switch (tok->width) {
 case 128:
 case 129:
  skip = 1;
  break;
 case 130:
  skip = 2;
  break;
 case 131:
  skip = 4;
  break;
 default:
  pr_debug("Token has invalid width!\n");
  return 0;
 }

 *store = tok->pos + skip;

 return tok->len - skip;
}
