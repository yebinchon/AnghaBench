#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  current; } ;
struct TYPE_8__ {int /*<<< orphan*/ * processed; } ;
struct TYPE_7__ {int /*<<< orphan*/  processed; } ;

/* Variables and functions */
 TYPE_1__* glog ; 
 TYPE_5__ gscroll ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__* parsing_spinner ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC8 (void)
{
  /* initialize modules and set first */
  gscroll.current = FUNC2 ();
  /* setup to use the current locale */
  FUNC6 ();

  FUNC4 ();

#ifdef HAVE_GEOLOCATION
  init_geoip ();
#endif

  /* init glog */
  glog = FUNC1 ();

  FUNC5 ();
  FUNC7 (glog);

  /* init parsing spinner */
  parsing_spinner = FUNC3 ();
  parsing_spinner->processed = &glog->processed;
}