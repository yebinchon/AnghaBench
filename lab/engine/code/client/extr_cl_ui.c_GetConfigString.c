
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* stringOffsets; scalar_t__ stringData; } ;
struct TYPE_4__ {TYPE_1__ gameState; } ;


 int MAX_CONFIGSTRINGS ;
 int Q_strncpyz (char*,scalar_t__,int) ;
 TYPE_2__ cl ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static int GetConfigString(int index, char *buf, int size)
{
 int offset;

 if (index < 0 || index >= MAX_CONFIGSTRINGS)
  return qfalse;

 offset = cl.gameState.stringOffsets[index];
 if (!offset) {
  if( size ) {
   buf[0] = 0;
  }
  return qfalse;
 }

 Q_strncpyz( buf, cl.gameState.stringData+offset, size);

 return qtrue;
}
