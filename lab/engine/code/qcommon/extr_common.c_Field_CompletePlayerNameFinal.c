
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_2__ {void* cursor; int * buffer; } ;


 int Q_strcat (int *,int,char*) ;
 int Q_strncpyz (int *,int ,int) ;
 TYPE_1__* completionField ;
 int * completionString ;
 int matchCount ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 int shortestMatch ;
 void* strlen (int *) ;

__attribute__((used)) static qboolean Field_CompletePlayerNameFinal( qboolean whitespace )
{
 int completionOffset;

 if( matchCount == 0 )
  return qtrue;

 completionOffset = strlen( completionField->buffer ) - strlen( completionString );

 Q_strncpyz( &completionField->buffer[ completionOffset ], shortestMatch,
  sizeof( completionField->buffer ) - completionOffset );

 completionField->cursor = strlen( completionField->buffer );

 if( matchCount == 1 && whitespace )
 {
  Q_strcat( completionField->buffer, sizeof( completionField->buffer ), " " );
  completionField->cursor++;
  return qtrue;
 }

 return qfalse;
}
