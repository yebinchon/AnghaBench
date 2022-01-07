
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct parsed_resp {int num; } ;
struct opal_resp_tok {int dummy; } ;


 int DTAERROR_NO_METHOD_STATUS ;
 int OPAL_ENDLIST ;
 int OPAL_ENDOFSESSION ;
 int OPAL_STARTLIST ;
 struct opal_resp_tok* response_get_token (struct parsed_resp const*,int) ;
 int response_get_u64 (struct parsed_resp const*,int) ;
 scalar_t__ response_token_matches (struct opal_resp_tok const*,int ) ;

__attribute__((used)) static u8 response_status(const struct parsed_resp *resp)
{
 const struct opal_resp_tok *tok;

 tok = response_get_token(resp, 0);
 if (response_token_matches(tok, OPAL_ENDOFSESSION))
  return 0;

 if (resp->num < 5)
  return DTAERROR_NO_METHOD_STATUS;

 tok = response_get_token(resp, resp->num - 5);
 if (!response_token_matches(tok, OPAL_STARTLIST))
  return DTAERROR_NO_METHOD_STATUS;

 tok = response_get_token(resp, resp->num - 1);
 if (!response_token_matches(tok, OPAL_ENDLIST))
  return DTAERROR_NO_METHOD_STATUS;

 return response_get_u64(resp, resp->num - 4);
}
