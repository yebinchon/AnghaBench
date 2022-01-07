
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 char* control_lz ;
 char* control_mlzo ;
 char* control_nrv ;
 char* control_nstdlzma ;
 char* control_unc ;
 char* control_unk ;
 int reverse_endian16 (int) ;

char* get_control_info ( uint16_t control )
{
 control = reverse_endian16 ( control );
 switch ( control )
 {
  case 0:
   return control_unc;
   break;
  case 1:
   return control_lz;
   break;
  case 2:
   return control_mlzo;
   break;
  case 3:
   return control_unc;
   break;
  case 4:
   return control_nrv;
   break;
  case 5:
   return control_nstdlzma;
   break;
  case 6:
   return control_unc;
   break;
  case 7:
   return control_unc;
   break;
  default:
   return control_unk;
   break;
 }

}
