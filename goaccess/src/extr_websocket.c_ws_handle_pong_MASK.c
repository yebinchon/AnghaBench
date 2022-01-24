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
struct TYPE_6__ {int /*<<< orphan*/  fin; } ;
typedef  TYPE_1__ WSFrame ;
struct TYPE_7__ {TYPE_1__* frame; } ;
typedef  TYPE_2__ WSClient ;

/* Variables and functions */
 int WS_CLOSE ; 
 int /*<<< orphan*/  WS_CLOSE_PROTO_ERR ; 
 int WS_ERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2 (WSClient * client)
{
  WSFrame **frm = &client->frame;

  if (!(*frm)->fin) {
    FUNC1 (client, WS_CLOSE_PROTO_ERR, WS_ERR | WS_CLOSE, NULL);
    return;
  }
  FUNC0 (client);
}