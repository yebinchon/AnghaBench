
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ skill; int filename; } ;


 int MAX_CLIENTS ;
 TYPE_1__** botcharacters ;
 double fabs (scalar_t__) ;
 scalar_t__ strcmp (int ,char*) ;

int BotFindCachedCharacter(char *charfile, float skill)
{
 int handle;

 for (handle = 1; handle <= MAX_CLIENTS; handle++)
 {
  if ( !botcharacters[handle] ) continue;
  if ( strcmp( botcharacters[handle]->filename, charfile ) == 0 &&
   (skill < 0 || fabs(botcharacters[handle]->skill - skill) < 0.01) )
  {
   return handle;
  }
 }
 return 0;
}
