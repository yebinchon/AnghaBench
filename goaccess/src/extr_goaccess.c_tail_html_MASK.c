#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  not_empty; } ;
struct TYPE_3__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__ gdns_thread ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  glog ; 
 TYPE_1__* gwswriter ; 
 int /*<<< orphan*/  holder ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9 (void)
{
  char *json = NULL;

  FUNC6 (&gdns_thread.mutex);
  FUNC3 (&holder);
  FUNC5 (&gdns_thread.not_empty);
  FUNC7 (&gdns_thread.mutex);

  FUNC0 ();

  FUNC6 (&gdns_thread.mutex);
  json = FUNC4 (glog, holder, 0);
  FUNC7 (&gdns_thread.mutex);

  if (json == NULL)
    return;

  FUNC1 (gwswriter->fd, json, FUNC8 (json));
  FUNC2 (json);
}