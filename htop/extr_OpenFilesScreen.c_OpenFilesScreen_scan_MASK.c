#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  lines; TYPE_1__* display; } ;
struct TYPE_17__ {int /*<<< orphan*/  pid; } ;
struct TYPE_14__ {char** data; } ;
struct TYPE_16__ {int error; TYPE_10__ data; struct TYPE_16__* next; struct TYPE_16__* files; } ;
struct TYPE_15__ {int /*<<< orphan*/  items; } ;
typedef  TYPE_1__ Panel ;
typedef  TYPE_2__ OpenFiles_ProcessData ;
typedef  TYPE_2__ OpenFiles_FileData ;
typedef  TYPE_4__ OpenFilesScreen ;
typedef  TYPE_5__ InfoScreen ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,char*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*,char*,char*,char*,char*,char*) ; 

void FUNC10(InfoScreen* this) {
   Panel* panel = this->display;
   int idx = FUNC3(panel);
   FUNC4(panel);
   OpenFiles_ProcessData* pdata = FUNC1(((OpenFilesScreen*)this)->pid);
   if (pdata->error == 127) {
      FUNC0(this, "Could not execute 'lsof'. Please make sure it is available in your $PATH.");
   } else if (pdata->error == 1) {
      FUNC0(this, "Failed listing open files.");
   } else {
      OpenFiles_FileData* fdata = pdata->files;
      while (fdata) {
         char** data = fdata->data.data;
         int lenN = data['n'] ? FUNC8(data['n']) : 0;
         int sizeEntry = 5 + 7 + 10 + 10 + 10 + lenN + 5 /*spaces*/ + 1 /*null*/;
         char entry[sizeEntry];
         FUNC9(entry, sizeEntry, "%5.5s %7.7s %10.10s %10.10s %10.10s %s",
            data['f'] ? data['f'] : "",
            data['t'] ? data['t'] : "",
            data['D'] ? data['D'] : "",
            data['s'] ? data['s'] : "",
            data['i'] ? data['i'] : "",
            data['n'] ? data['n'] : "");
         FUNC0(this, entry);
         FUNC2(&fdata->data);
         OpenFiles_FileData* old = fdata;
         fdata = fdata->next;
         FUNC7(old);
      }
      FUNC2(&pdata->data);
   }
   FUNC7(pdata);
   FUNC6(this->lines);
   FUNC6(panel->items);
   FUNC5(panel, idx);
}