
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int string; } ;


 char* FS_BuildOSPath (int ,char const*,char*) ;
 int FS_FileInPathExists (char*) ;
 TYPE_1__* fs_homepath ;
 int strlen (char*) ;

qboolean FS_SV_FileExists( const char *file )
{
 char *testpath;

 testpath = FS_BuildOSPath( fs_homepath->string, file, "");
 testpath[strlen(testpath)-1] = '\0';

 return FS_FileInPathExists(testpath);
}
