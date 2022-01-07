
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {char* title; } ;
struct TYPE_6__ {TYPE_1__* settings; } ;
struct TYPE_5__ {int* fields; int sortKey; int treeView; } ;
typedef int RichString ;
typedef TYPE_2__ ProcessList ;
typedef int ProcessField ;


 int * CRT_colors ;
 size_t PANEL_HEADER_FOCUS ;
 size_t PANEL_SELECTION_FOCUS ;
 TYPE_3__* Process_fields ;
 int RichString_append (int *,int ,char const*) ;
 int RichString_prune (int *) ;

void ProcessList_printHeader(ProcessList* this, RichString* header) {
   RichString_prune(header);
   ProcessField* fields = this->settings->fields;
   for (int i = 0; fields[i]; i++) {
      const char* field = Process_fields[fields[i]].title;
      if (!field) field = "- ";
      if (!this->settings->treeView && this->settings->sortKey == fields[i])
         RichString_append(header, CRT_colors[PANEL_SELECTION_FOCUS], field);
      else
         RichString_append(header, CRT_colors[PANEL_HEADER_FOCUS], field);
   }
}
