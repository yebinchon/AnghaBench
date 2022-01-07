
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ scroll; scalar_t__ cursor; int buffer; } ;
typedef TYPE_1__ field_t ;


 int MAX_EDIT_LINE ;
 int memset (int ,int ,int ) ;

void Field_Clear( field_t *edit ) {
  memset(edit->buffer, 0, MAX_EDIT_LINE);
 edit->cursor = 0;
 edit->scroll = 0;
}
