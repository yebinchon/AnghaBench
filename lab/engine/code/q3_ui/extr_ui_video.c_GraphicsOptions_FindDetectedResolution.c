
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_stricmp (int ,scalar_t__) ;
 int * builtinResolutions ;
 scalar_t__* detectedResolutions ;
 int resolutionsDetected ;

__attribute__((used)) static int GraphicsOptions_FindDetectedResolution( int mode )
{
 int i;

 if( !resolutionsDetected )
  return mode;

 if( mode < 0 )
  return -1;

 for( i = 0; detectedResolutions[ i ]; i++ )
 {
  if( !Q_stricmp( builtinResolutions[ mode ], detectedResolutions[ i ] ) )
   return i;
 }

 return -1;
}
