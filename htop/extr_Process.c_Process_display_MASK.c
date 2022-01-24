#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  (* writeField ) (TYPE_3__*,TYPE_2__*,scalar_t__) ;} ;
struct TYPE_13__ {int tag; scalar_t__ st_uid; TYPE_1__* settings; } ;
struct TYPE_12__ {scalar_t__ chlen; } ;
struct TYPE_11__ {scalar_t__ shadowOtherUsers; scalar_t__* fields; } ;
typedef  TYPE_2__ RichString ;
typedef  scalar_t__ ProcessField ;
typedef  TYPE_3__ Process ;
typedef  int /*<<< orphan*/  Object ;

/* Variables and functions */
 TYPE_9__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/ * CRT_colors ; 
 size_t PROCESS_SHADOW ; 
 size_t PROCESS_TAG ; 
 int Process_getuid ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*,scalar_t__) ; 

void FUNC5(Object* cast, RichString* out) {
   Process* this = (Process*) cast;
   ProcessField* fields = this->settings->fields;
   FUNC1(out);
   for (int i = 0; fields[i]; i++)
      FUNC0(this)->writeField(this, out, fields[i]);
   if (this->settings->shadowOtherUsers && (int)this->st_uid != Process_getuid)
      FUNC2(out, CRT_colors[PROCESS_SHADOW]);
   if (this->tag == true)
      FUNC2(out, CRT_colors[PROCESS_TAG]);
   FUNC3(out->chlen > 0);
}