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
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_2__ gdns_thread ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  glog ; 
 TYPE_1__* gwswriter ; 
 int /*<<< orphan*/  holder ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6 (int listener)
{
  char *json = NULL;

  FUNC2 (&gdns_thread.mutex);
  json = FUNC1 (glog, holder, 0);
  FUNC3 (&gdns_thread.mutex);

  if (json == NULL)
    return;

  FUNC2 (&gwswriter->mutex);
  FUNC4 (gwswriter->fd, listener, json, FUNC5 (json));
  FUNC3 (&gwswriter->mutex);
  FUNC0 (json);
}