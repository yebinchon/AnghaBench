
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Settings_ {int dummy; } ;
struct TYPE_3__ {int tag; int showChildren; int show; int updated; int basenameOffset; struct Settings_* settings; } ;
typedef TYPE_1__ Process ;


 int Process_getuid ;
 int getuid () ;

void Process_init(Process* this, struct Settings_* settings) {
   this->settings = settings;
   this->tag = 0;
   this->showChildren = 1;
   this->show = 1;
   this->updated = 0;
   this->basenameOffset = -1;
   if (Process_getuid == -1) Process_getuid = getuid();
}
