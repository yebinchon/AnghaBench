
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COM_CompareExtension (char const*,char*) ;
 int COM_GetExtension (char const*) ;
 int Com_Error (int ,char*,char const*,char const*,int ) ;
 int ERR_FATAL ;
 scalar_t__ Sys_DllExtension (char const*) ;

__attribute__((used)) static void FS_CheckFilenameIsMutable( const char *filename,
  const char *function )
{

 if( Sys_DllExtension( filename )
  || COM_CompareExtension( filename, ".qvm" )
  || COM_CompareExtension( filename, ".pk3" ) )
 {
  Com_Error( ERR_FATAL, "%s: Not allowed to manipulate '%s' due "
   "to %s extension", function, filename, COM_GetExtension( filename ) );
 }
}
