
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ieee1284_phase { ____Placeholder_ieee1284_phase } ieee1284_phase ;


 int IEEE1284_ADDR ;
 int IEEE1284_DEVICEID ;


 int IEEE1284_PH_FWD_IDLE ;
 int IEEE1284_PH_REV_IDLE ;

__attribute__((used)) static enum ieee1284_phase init_phase(int mode)
{
 switch (mode & ~(IEEE1284_DEVICEID
    | IEEE1284_ADDR)) {
 case 128:
 case 129:
  return IEEE1284_PH_REV_IDLE;
 }
 return IEEE1284_PH_FWD_IDLE;
}
