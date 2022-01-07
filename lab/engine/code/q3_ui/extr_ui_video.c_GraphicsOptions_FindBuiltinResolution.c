
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_stricmp (scalar_t__,int ) ;
 scalar_t__* builtinResolutions ;
 int * detectedResolutions ;
 int resolutionsDetected ;

__attribute__((used)) static int GraphicsOptions_FindBuiltinResolution( int mode )
{
 int i;

 if( !resolutionsDetected )
  return mode;

 if( mode < 0 )
  return -1;

 for( i = 0; builtinResolutions[ i ]; i++ )
 {
  if( !Q_stricmp( builtinResolutions[ i ], detectedResolutions[ mode ] ) )
   return i;
 }

 return -1;
}
