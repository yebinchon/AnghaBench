
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* string; struct TYPE_8__* next; } ;
typedef TYPE_2__ bot_matchstring_t ;
struct TYPE_9__ {scalar_t__ type; size_t variable; TYPE_2__* firststring; struct TYPE_9__* next; } ;
typedef TYPE_3__ bot_matchpiece_t ;
struct TYPE_10__ {char* string; TYPE_1__* variables; } ;
typedef TYPE_4__ bot_match_t ;
struct TYPE_7__ {int length; int offset; } ;


 scalar_t__ MT_STRING ;
 scalar_t__ MT_VARIABLE ;
 int StringContains (char*,char*,int) ;
 int assert (int) ;
 int qfalse ;
 int qtrue ;
 int strlen (char*) ;

int StringsMatch(bot_matchpiece_t *pieces, bot_match_t *match)
{
 int lastvariable, index;
 char *strptr, *newstrptr;
 bot_matchpiece_t *mp;
 bot_matchstring_t *ms;


 lastvariable = -1;

 strptr = match->string;


 for (mp = pieces; mp; mp = mp->next)
 {

  if (mp->type == MT_STRING)
  {
   newstrptr = ((void*)0);
   for (ms = mp->firststring; ms; ms = ms->next)
   {
    if (!strlen(ms->string))
    {
     newstrptr = strptr;
     break;
    }

    index = StringContains(strptr, ms->string, qfalse);
    if (index >= 0)
    {
     newstrptr = strptr + index;
     if (lastvariable >= 0)
     {
      match->variables[lastvariable].length =
        (newstrptr - match->string) - match->variables[lastvariable].offset;

      lastvariable = -1;
      break;
     }
     else if (index == 0)
     {
      break;
     }
     newstrptr = ((void*)0);
    }
   }
   if (!newstrptr) return qfalse;
   strptr = newstrptr + strlen(ms->string);
  }

  else if (mp->type == MT_VARIABLE)
  {

   match->variables[mp->variable].offset = strptr - match->string;
   lastvariable = mp->variable;
  }
 }

 if (!mp && (lastvariable >= 0 || !strlen(strptr)))
 {

  if (lastvariable >= 0)
  {
          assert( match->variables[lastvariable].offset >= 0 );
   match->variables[lastvariable].length =
    strlen(&match->string[ (int) match->variables[lastvariable].offset]);
  }
  return qtrue;
 }
 return qfalse;
}
