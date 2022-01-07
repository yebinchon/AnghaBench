
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buffer; } ;
typedef TYPE_1__ field_t ;


 int Field_CompleteCommand (int ,int ,int ) ;
 TYPE_1__* completionField ;
 int qtrue ;

void Field_AutoComplete( field_t *field )
{
 completionField = field;

 Field_CompleteCommand( completionField->buffer, qtrue, qtrue );
}
