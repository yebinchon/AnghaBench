
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct opal_resp_tok {int const* pos; int len; int type; int width; } ;
typedef int ssize_t ;


 int const LONG_ATOM_BYTESTRING ;
 int const LONG_ATOM_SIGNED ;
 int OPAL_DTA_TOKENID_BYTESTRING ;
 int OPAL_DTA_TOKENID_SINT ;
 int OPAL_DTA_TOKENID_UINT ;
 int OPAL_WIDTH_LONG ;

__attribute__((used)) static ssize_t response_parse_long(struct opal_resp_tok *tok,
       const u8 *pos)
{
 tok->pos = pos;
 tok->len = ((pos[1] << 16) | (pos[2] << 8) | pos[3]) + 4;
 tok->width = OPAL_WIDTH_LONG;

 if (pos[0] & LONG_ATOM_BYTESTRING)
  tok->type = OPAL_DTA_TOKENID_BYTESTRING;
 else if (pos[0] & LONG_ATOM_SIGNED)
  tok->type = OPAL_DTA_TOKENID_SINT;
 else
  tok->type = OPAL_DTA_TOKENID_UINT;

 return tok->len;
}
