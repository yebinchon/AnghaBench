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
struct TYPE_5__ {char* ks_name; } ;
typedef  TYPE_1__ kstat_t ;
typedef  int /*<<< orphan*/  kstat_ctl_t ;
struct TYPE_6__ {scalar_t__ zoneid; } ;
typedef  TYPE_2__ SolarisProcess ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*) ; 

char* FUNC2(kstat_ctl_t* kd, SolarisProcess* sproc) {
  char* zname;
  if ( sproc->zoneid == 0 ) {
     zname = FUNC1("global    ");
  } else if ( kd == NULL ) {
     zname = FUNC1("unknown   ");
  } else {
     kstat_t* ks = FUNC0( kd, "zones", sproc->zoneid, NULL );
     zname = FUNC1(ks->ks_name);
  }
  return zname;
}