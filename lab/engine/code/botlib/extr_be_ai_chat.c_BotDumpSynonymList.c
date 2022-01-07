
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* firstsynonym; int context; struct TYPE_4__* next; } ;
typedef TYPE_1__ bot_synonymlist_t ;
struct TYPE_5__ {char* string; double weight; struct TYPE_5__* next; } ;
typedef TYPE_2__ bot_synonym_t ;
typedef int FILE ;


 int * Log_FilePointer () ;
 int fprintf (int *,char*,...) ;

void BotDumpSynonymList(bot_synonymlist_t *synlist)
{
 FILE *fp;
 bot_synonymlist_t *syn;
 bot_synonym_t *synonym;

 fp = Log_FilePointer();
 if (!fp) return;
 for (syn = synlist; syn; syn = syn->next)
 {
         fprintf(fp, "%ld : [", syn->context);
  for (synonym = syn->firstsynonym; synonym; synonym = synonym->next)
  {
   fprintf(fp, "(\"%s\", %1.2f)", synonym->string, synonym->weight);
   if (synonym->next) fprintf(fp, ", ");
  }
  fprintf(fp, "]\n");
 }
}
