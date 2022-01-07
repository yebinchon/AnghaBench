
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int digits; int emax; int emin; int clamp; int extended; int traps; void* round; scalar_t__ status; } ;
typedef TYPE_1__ decContext ;
typedef int Int ;


 int DEC_Errors ;




 int DEC_Invalid_operation ;
 int DEC_MAX_EMAX ;
 int DEC_MIN_EMIN ;
 void* DEC_ROUND_HALF_EVEN ;
 void* DEC_ROUND_HALF_UP ;
 int decContextSetStatus (TYPE_1__*,int ) ;

decContext * decContextDefault(decContext *context, Int kind) {

  context->digits=9;
  context->emax=DEC_MAX_EMAX;
  context->emin=DEC_MIN_EMIN;
  context->round=DEC_ROUND_HALF_UP;
  context->traps=DEC_Errors;
  context->status=0;
  context->clamp=0;



  switch (kind) {
    case 131:

      break;
    case 129:
      context->digits=7;
      context->emax=96;
      context->emin=-95;
      context->round=DEC_ROUND_HALF_EVEN;
      context->traps=0;
      context->clamp=1;



      break;
    case 128:
      context->digits=16;
      context->emax=384;
      context->emin=-383;
      context->round=DEC_ROUND_HALF_EVEN;
      context->traps=0;
      context->clamp=1;



      break;
    case 130:
      context->digits=34;
      context->emax=6144;
      context->emin=-6143;
      context->round=DEC_ROUND_HALF_EVEN;
      context->traps=0;
      context->clamp=1;



      break;

    default:

      decContextSetStatus(context, DEC_Invalid_operation);
    }

  return context;}
