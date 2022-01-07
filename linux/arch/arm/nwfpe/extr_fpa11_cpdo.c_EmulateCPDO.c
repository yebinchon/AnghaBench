
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct roundingData {scalar_t__ exception; int precision; int mode; } ;
struct TYPE_8__ {unsigned int* fType; TYPE_1__* fpreg; } ;
struct TYPE_7__ {void* fSingle; void* fDouble; int fExtended; } ;
typedef TYPE_1__ FPREG ;
typedef TYPE_2__ FPA11 ;


 int CONSTANT_FM (unsigned int const) ;
 unsigned int DoubleCPDO (struct roundingData*,unsigned int const,TYPE_1__*) ;
 unsigned int ExtendedCPDO (struct roundingData*,unsigned int const,TYPE_1__*) ;
 TYPE_2__* GET_FPA11 () ;
 scalar_t__ MONADIC_INSTRUCTION (unsigned int const) ;
 int SetRoundingMode (unsigned int const) ;
 int SetRoundingPrecision (unsigned int const) ;
 unsigned int SingleCPDO (struct roundingData*,unsigned int const,TYPE_1__*) ;
 void* float32_to_float64 (void*) ;
 int float32_to_floatx80 (void*) ;
 void* float64_to_float32 (struct roundingData*,void*) ;
 int float64_to_floatx80 (void*) ;
 int float_raise (scalar_t__) ;
 void* floatx80_to_float32 (struct roundingData*,int ) ;
 void* floatx80_to_float64 (struct roundingData*,int ) ;
 unsigned int getDestinationSize (unsigned int const) ;
 size_t getFd (unsigned int const) ;
 unsigned int getFm (unsigned int const) ;
 size_t getFn (unsigned int const) ;


 unsigned int typeNone ;


unsigned int EmulateCPDO(const unsigned int opcode)
{
 FPA11 *fpa11 = GET_FPA11();
 FPREG *rFd;
 unsigned int nType, nDest, nRc;
 struct roundingData roundData;



 nDest = getDestinationSize(opcode);
 if (typeNone == nDest)
  return 0;

 roundData.mode = SetRoundingMode(opcode);
 roundData.precision = SetRoundingPrecision(opcode);
 roundData.exception = 0;






 if (MONADIC_INSTRUCTION(opcode))
  nType = nDest;
 else
  nType = fpa11->fType[getFn(opcode)];

 if (!CONSTANT_FM(opcode)) {
  register unsigned int Fm = getFm(opcode);
  if (nType < fpa11->fType[Fm]) {
   nType = fpa11->fType[Fm];
  }
 }

 rFd = &fpa11->fpreg[getFd(opcode)];

 switch (nType) {
 case 128:
  nRc = SingleCPDO(&roundData, opcode, rFd);
  break;
 case 130:
  nRc = DoubleCPDO(&roundData, opcode, rFd);
  break;





 default:
  nRc = 0;
 }




 if (nRc != 0) {




  fpa11->fType[getFd(opcode)] = nDest;
  if (nDest != nType) {
   if (nDest == 128)
    rFd->fSingle = float64_to_float32(&roundData, rFd->fDouble);
   else
    rFd->fDouble = float32_to_float64(rFd->fSingle);
  }

 }

 if (roundData.exception)
  float_raise(roundData.exception);

 return nRc;
}
