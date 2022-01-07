
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int FS_READ ;
 int qfalse ;
 int qtrue ;
 int trap_FS_FOpenFile (char const*,int *,int ) ;

__attribute__((used)) static qboolean CG_FileExists(const char *filename) {
 int len;

 len = trap_FS_FOpenFile( filename, ((void*)0), FS_READ );
 if (len>0) {
  return qtrue;
 }
 return qfalse;
}
