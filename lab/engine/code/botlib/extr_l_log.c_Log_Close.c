
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* Print ) (int ,char*,int ) ;} ;
struct TYPE_3__ {int filename; int * fp; } ;


 int PRT_ERROR ;
 int PRT_MESSAGE ;
 TYPE_2__ botimport ;
 scalar_t__ fclose (int *) ;
 TYPE_1__ logfile ;
 int stub1 (int ,char*,int ) ;
 int stub2 (int ,char*,int ) ;

void Log_Close(void)
{
 if (!logfile.fp) return;
 if (fclose(logfile.fp))
 {
  botimport.Print(PRT_ERROR, "can't close log file %s\n", logfile.filename);
  return;
 }
 logfile.fp = ((void*)0);
 botimport.Print(PRT_MESSAGE, "Closed log %s\n", logfile.filename);
}
