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
struct TYPE_5__ {char* buf; int res; int /*<<< orphan*/  masking; int /*<<< orphan*/  opcode; int /*<<< orphan*/  fin; } ;
typedef  TYPE_1__ WSFrame ;
struct TYPE_6__ {TYPE_1__* frame; } ;
typedef  TYPE_2__ WSClient ;

/* Variables and functions */
 int WS_CLOSE ; 
 int WS_ERR ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 (char) ; 
 scalar_t__ FUNC5 (char) ; 
 int FUNC6 (TYPE_2__*,int,int) ; 

__attribute__((used)) static int
FUNC7 (WSClient * client)
{
  WSFrame **frm = &client->frame;
  char *buf = (*frm)->buf;

  (*frm)->fin = FUNC0 (*(buf));
  (*frm)->masking = FUNC1 (*(buf + 1));
  (*frm)->opcode = FUNC2 (*(buf));
  (*frm)->res = FUNC3 (*(buf)) || FUNC4 (*(buf)) || FUNC5 (*(buf));

  /* should be masked and can't be using RESVd  bits */
  if (!(*frm)->masking || (*frm)->res)
    return FUNC6 (client, WS_ERR | WS_CLOSE, 1);

  return 0;
}