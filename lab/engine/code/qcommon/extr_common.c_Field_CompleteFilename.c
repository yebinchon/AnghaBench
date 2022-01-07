
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int FS_FilenameCompletion (char const*,char const*,int ,int ,int ) ;
 int Field_Complete () ;
 int FindMatches ;
 int PrintMatches ;
 scalar_t__ matchCount ;
 scalar_t__* shortestMatch ;

void Field_CompleteFilename( const char *dir,
  const char *ext, qboolean stripExt, qboolean allowNonPureFilesOnDisk )
{
 matchCount = 0;
 shortestMatch[ 0 ] = 0;

 FS_FilenameCompletion( dir, ext, stripExt, FindMatches, allowNonPureFilesOnDisk );

 if( !Field_Complete( ) )
  FS_FilenameCompletion( dir, ext, stripExt, PrintMatches, allowNonPureFilesOnDisk );
}
