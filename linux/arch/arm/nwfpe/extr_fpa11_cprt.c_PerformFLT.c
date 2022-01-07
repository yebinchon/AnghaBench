
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct roundingData {scalar_t__ exception; int precision; int mode; } ;
struct TYPE_5__ {TYPE_1__* fpreg; int * fType; } ;
struct TYPE_4__ {int fExtended; int fDouble; int fSingle; } ;
typedef TYPE_2__ FPA11 ;


 TYPE_2__* GET_FPA11 () ;
 unsigned int const MASK_ROUNDING_PRECISION ;



 int SetRoundingMode (unsigned int const) ;
 int SetRoundingPrecision (unsigned int const) ;
 int float_raise (scalar_t__) ;
 size_t getFn (unsigned int const) ;
 int getRd (unsigned int const) ;
 int int32_to_float32 (struct roundingData*,int ) ;
 int int32_to_float64 (int ) ;
 int int32_to_floatx80 (int ) ;
 int readRegister (int ) ;
 int typeDouble ;
 int typeExtended ;
 int typeSingle ;

unsigned int PerformFLT(const unsigned int opcode)
{
 FPA11 *fpa11 = GET_FPA11();
 struct roundingData roundData;

 roundData.mode = SetRoundingMode(opcode);
 roundData.precision = SetRoundingPrecision(opcode);
 roundData.exception = 0;

 switch (opcode & MASK_ROUNDING_PRECISION) {
 case 128:
  {
   fpa11->fType[getFn(opcode)] = typeSingle;
   fpa11->fpreg[getFn(opcode)].fSingle = int32_to_float32(&roundData, readRegister(getRd(opcode)));
  }
  break;

 case 130:
  {
   fpa11->fType[getFn(opcode)] = typeDouble;
   fpa11->fpreg[getFn(opcode)].fDouble = int32_to_float64(readRegister(getRd(opcode)));
  }
  break;
 default:
  return 0;
 }

 if (roundData.exception)
  float_raise(roundData.exception);

 return 1;
}
