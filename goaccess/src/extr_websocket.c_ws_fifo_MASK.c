#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pipeout; int /*<<< orphan*/  pipein; } ;
typedef  TYPE_1__ WSServer ;
struct TYPE_5__ {scalar_t__ pipeout; scalar_t__ pipein; } ;

/* Variables and functions */
 scalar_t__ WS_PIPEIN ; 
 scalar_t__ WS_PIPEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__ wsconfig ; 

__attribute__((used)) static void
FUNC2 (WSServer * server)
{
  wsconfig.pipein = wsconfig.pipein ? wsconfig.pipein : WS_PIPEIN;
  wsconfig.pipeout = wsconfig.pipeout ? wsconfig.pipeout : WS_PIPEOUT;

  FUNC0 (server->pipein);
  FUNC1 (server->pipeout);
}