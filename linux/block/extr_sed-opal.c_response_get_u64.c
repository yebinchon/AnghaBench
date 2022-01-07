
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct parsed_resp {int dummy; } ;
struct TYPE_2__ {int u; } ;
struct opal_resp_tok {scalar_t__ type; scalar_t__ width; TYPE_1__ stored; } ;


 scalar_t__ IS_ERR (struct opal_resp_tok const*) ;
 scalar_t__ OPAL_DTA_TOKENID_UINT ;
 scalar_t__ OPAL_WIDTH_SHORT ;
 scalar_t__ OPAL_WIDTH_TINY ;
 int pr_debug (char*,scalar_t__) ;
 struct opal_resp_tok* response_get_token (struct parsed_resp const*,int) ;

__attribute__((used)) static u64 response_get_u64(const struct parsed_resp *resp, int n)
{
 const struct opal_resp_tok *tok;

 tok = response_get_token(resp, n);
 if (IS_ERR(tok))
  return 0;

 if (tok->type != OPAL_DTA_TOKENID_UINT) {
  pr_debug("Token is not unsigned int: %d\n", tok->type);
  return 0;
 }

 if (tok->width != OPAL_WIDTH_TINY && tok->width != OPAL_WIDTH_SHORT) {
  pr_debug("Atom is not short or tiny: %d\n", tok->width);
  return 0;
 }

 return tok->stored.u;
}
