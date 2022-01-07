
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct opal_resp_tok {int len; int width; int type; int const* pos; } ;
typedef int ssize_t ;


 int OPAL_DTA_TOKENID_TOKEN ;
 int OPAL_WIDTH_TOKEN ;

__attribute__((used)) static ssize_t response_parse_token(struct opal_resp_tok *tok,
        const u8 *pos)
{
 tok->pos = pos;
 tok->len = 1;
 tok->type = OPAL_DTA_TOKENID_TOKEN;
 tok->width = OPAL_WIDTH_TOKEN;

 return tok->len;
}
