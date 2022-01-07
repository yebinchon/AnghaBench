
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dialogType_t ;
typedef int dialogResult_t ;
typedef int UINT ;


 int DR_CANCEL ;
 int DR_NO ;
 int DR_OK ;
 int DR_YES ;
 int MB_ICONERROR ;
 int MB_ICONINFORMATION ;
 int MB_ICONQUESTION ;
 int MB_ICONWARNING ;
 int MB_OK ;
 int MB_OKCANCEL ;
 int MB_YESNO ;
 int MessageBox (int *,char const*,char const*,int) ;

dialogResult_t Sys_Dialog( dialogType_t type, const char *message, const char *title )
{
 UINT uType;

 switch( type )
 {
  default:
  case 135: uType = MB_ICONINFORMATION|MB_OK; break;
  case 133: uType = MB_ICONWARNING|MB_OK; break;
  case 136: uType = MB_ICONERROR|MB_OK; break;
  case 132: uType = MB_ICONQUESTION|MB_YESNO; break;
  case 134: uType = MB_ICONWARNING|MB_OKCANCEL; break;
 }

 switch( MessageBox( ((void*)0), message, title, uType ) )
 {
  default:
  case 129: return DR_OK;
  case 131: return DR_CANCEL;
  case 128: return DR_YES;
  case 130: return DR_NO;
 }
}
