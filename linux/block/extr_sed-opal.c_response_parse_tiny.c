
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int u; } ;
struct opal_resp_tok {int const* pos; int len; TYPE_1__ stored; int type; int width; } ;
typedef int ssize_t ;


 int OPAL_DTA_TOKENID_SINT ;
 int OPAL_DTA_TOKENID_UINT ;
 int OPAL_WIDTH_TINY ;
 int const TINY_ATOM_SIGNED ;

__attribute__((used)) static ssize_t response_parse_tiny(struct opal_resp_tok *tok,
       const u8 *pos)
{
 tok->pos = pos;
 tok->len = 1;
 tok->width = OPAL_WIDTH_TINY;

 if (pos[0] & TINY_ATOM_SIGNED) {
  tok->type = OPAL_DTA_TOKENID_SINT;
 } else {
  tok->type = OPAL_DTA_TOKENID_UINT;
  tok->stored.u = pos[0] & 0x3f;
 }

 return tok->len;
}
