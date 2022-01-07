
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; int subtype; TYPE_3__* first; struct TYPE_5__* next; } ;
typedef TYPE_1__ bot_matchtemplate_t ;
struct TYPE_6__ {char* string; struct TYPE_6__* next; } ;
typedef TYPE_2__ bot_matchstring_t ;
struct TYPE_7__ {scalar_t__ type; int variable; struct TYPE_7__* next; TYPE_2__* firststring; } ;
typedef TYPE_3__ bot_matchpiece_t ;
typedef int FILE ;


 int * Log_FilePointer () ;
 scalar_t__ MT_STRING ;
 scalar_t__ MT_VARIABLE ;
 int fprintf (int *,char*,...) ;

void BotDumpMatchTemplates(bot_matchtemplate_t *matches)
{
 FILE *fp;
 bot_matchtemplate_t *mt;
 bot_matchpiece_t *mp;
 bot_matchstring_t *ms;

 fp = Log_FilePointer();
 if (!fp) return;
 for (mt = matches; mt; mt = mt->next)
 {
         fprintf(fp, "{ " );
  for (mp = mt->first; mp; mp = mp->next)
  {
   if (mp->type == MT_STRING)
   {
    for (ms = mp->firststring; ms; ms = ms->next)
    {
     fprintf(fp, "\"%s\"", ms->string);
     if (ms->next) fprintf(fp, "|");
    }
   }
   else if (mp->type == MT_VARIABLE)
   {
    fprintf(fp, "%d", mp->variable);
   }
   if (mp->next) fprintf(fp, ", ");
  }
  fprintf(fp, " = (%d, %d);}\n", mt->type, mt->subtype);
 }
}
