
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int COM_CompareExtension (char const*,int ) ;
 int DLL_EXT ;

qboolean Sys_DllExtension( const char *name ) {
 return COM_CompareExtension( name, DLL_EXT );
}
