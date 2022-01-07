
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int string; } ;


 int FS_BuildOSPath (int ,int ,char const*) ;
 int FS_FileInPathExists (int ) ;
 int fs_gamedir ;
 TYPE_1__* fs_homepath ;

qboolean FS_FileExists(const char *file)
{
 return FS_FileInPathExists(FS_BuildOSPath(fs_homepath->string, fs_gamedir, file));
}
