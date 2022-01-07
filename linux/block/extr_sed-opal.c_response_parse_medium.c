
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct opal_resp_tok {int const* pos; int len; int type; int width; } ;
typedef int ssize_t ;


 int const MEDIUM_ATOM_BYTESTRING ;
 int const MEDIUM_ATOM_LEN_MASK ;
 int const MEDIUM_ATOM_SIGNED ;
 int OPAL_DTA_TOKENID_BYTESTRING ;
 int OPAL_DTA_TOKENID_SINT ;
 int OPAL_DTA_TOKENID_UINT ;
 int OPAL_WIDTH_MEDIUM ;

__attribute__((used)) static ssize_t response_parse_medium(struct opal_resp_tok *tok,
         const u8 *pos)
{
 tok->pos = pos;
 tok->len = (((pos[0] & MEDIUM_ATOM_LEN_MASK) << 8) | pos[1]) + 2;
 tok->width = OPAL_WIDTH_MEDIUM;

 if (pos[0] & MEDIUM_ATOM_BYTESTRING)
  tok->type = OPAL_DTA_TOKENID_BYTESTRING;
 else if (pos[0] & MEDIUM_ATOM_SIGNED)
  tok->type = OPAL_DTA_TOKENID_SINT;
 else
  tok->type = OPAL_DTA_TOKENID_UINT;

 return tok->len;
}
