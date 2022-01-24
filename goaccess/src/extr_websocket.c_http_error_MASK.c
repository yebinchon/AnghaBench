#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  end_proc; } ;
typedef  TYPE_1__ WSClient ;
struct TYPE_7__ {scalar_t__ accesslog; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 TYPE_2__ wsconfig ; 

__attribute__((used)) static int
FUNC4 (WSClient * client, const char *buffer)
{
  /* do access logging */
  FUNC1 (&client->end_proc, NULL);
  if (wsconfig.accesslog)
    FUNC0 (client, 400);

  return FUNC3 (client, buffer, FUNC2 (buffer));
}