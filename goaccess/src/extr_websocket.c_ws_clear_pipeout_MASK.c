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
struct TYPE_5__ {int fd; } ;
typedef  TYPE_1__ WSPipeOut ;
struct TYPE_6__ {scalar_t__ pipeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_2__ wsconfig ; 

__attribute__((used)) static void
FUNC4 (WSPipeOut * pipeout)
{
  if (!pipeout)
    return;

  if (pipeout->fd != -1)
    FUNC1 (pipeout->fd);

  FUNC2 (pipeout);

  if (wsconfig.pipeout && FUNC0 (wsconfig.pipeout, F_OK) != -1)
    FUNC3 (wsconfig.pipeout);
}