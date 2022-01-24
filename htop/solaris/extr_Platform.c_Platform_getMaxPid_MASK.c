#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int v_proc; } ;
typedef  TYPE_1__ kvar_t ;
struct TYPE_6__ {TYPE_1__* ks_data; } ;
typedef  TYPE_2__ kstat_t ;
typedef  int /*<<< orphan*/  kstat_ctl_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 

int FUNC4() {
   kstat_ctl_t *kc = NULL;
   kstat_t *kshandle = NULL;
   kvar_t *ksvar = NULL;
   int vproc = 32778; // Reasonable Solaris default
   kc = FUNC2();
   if (kc != NULL) { kshandle = FUNC1(kc,"unix",0,"var"); }
   if (kshandle != NULL) { FUNC3(kc,kshandle,NULL); }
   ksvar = kshandle->ks_data;
   if (ksvar->v_proc > 0 ) {
      vproc = ksvar->v_proc;
   }
   if (kc != NULL) { FUNC0(kc); }
   return vproc; 
}