
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int (* writeField ) (TYPE_3__*,TYPE_2__*,scalar_t__) ;} ;
struct TYPE_13__ {int tag; scalar_t__ st_uid; TYPE_1__* settings; } ;
struct TYPE_12__ {scalar_t__ chlen; } ;
struct TYPE_11__ {scalar_t__ shadowOtherUsers; scalar_t__* fields; } ;
typedef TYPE_2__ RichString ;
typedef scalar_t__ ProcessField ;
typedef TYPE_3__ Process ;
typedef int Object ;


 TYPE_9__* As_Process (TYPE_3__*) ;
 int * CRT_colors ;
 size_t PROCESS_SHADOW ;
 size_t PROCESS_TAG ;
 int Process_getuid ;
 int RichString_prune (TYPE_2__*) ;
 int RichString_setAttr (TYPE_2__*,int ) ;
 int assert (int) ;
 int stub1 (TYPE_3__*,TYPE_2__*,scalar_t__) ;

void Process_display(Object* cast, RichString* out) {
   Process* this = (Process*) cast;
   ProcessField* fields = this->settings->fields;
   RichString_prune(out);
   for (int i = 0; fields[i]; i++)
      As_Process(this)->writeField(this, out, fields[i]);
   if (this->settings->shadowOtherUsers && (int)this->st_uid != Process_getuid)
      RichString_setAttr(out, CRT_colors[PROCESS_SHADOW]);
   if (this->tag == 1)
      RichString_setAttr(out, CRT_colors[PROCESS_TAG]);
   assert(out->chlen > 0);
}
