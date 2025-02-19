
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parsed_resp {int num; struct opal_resp_tok* toks; } ;
struct opal_resp_tok {scalar_t__ len; } ;


 int EINVAL ;
 struct opal_resp_tok const* ERR_PTR (int ) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static const struct opal_resp_tok *response_get_token(
    const struct parsed_resp *resp,
    int n)
{
 const struct opal_resp_tok *tok;

 if (!resp) {
  pr_debug("Response is NULL\n");
  return ERR_PTR(-EINVAL);
 }

 if (n >= resp->num) {
  pr_debug("Token number doesn't exist: %d, resp: %d\n",
    n, resp->num);
  return ERR_PTR(-EINVAL);
 }

 tok = &resp->toks[n];
 if (tok->len == 0) {
  pr_debug("Token length must be non-zero\n");
  return ERR_PTR(-EINVAL);
 }

 return tok;
}
