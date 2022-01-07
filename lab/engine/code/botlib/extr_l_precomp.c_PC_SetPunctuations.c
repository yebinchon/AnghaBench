
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * punctuations; } ;
typedef TYPE_1__ source_t ;
typedef int punctuation_t ;



void PC_SetPunctuations(source_t *source, punctuation_t *p)
{
 source->punctuations = p;
}
