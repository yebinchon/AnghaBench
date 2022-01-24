#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  colist; } ;
typedef  TYPE_2__ WSServer ;
struct TYPE_11__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ WSPacket ;
struct TYPE_12__ {TYPE_1__* headers; } ;
typedef  TYPE_4__ WSClient ;
struct TYPE_9__ {int /*<<< orphan*/ * ws_accept; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (WSServer * server, int listener, WSPacket * pa)
{
  WSClient *client = NULL;

  if (!(client = FUNC0 (listener, &server->colist)))
    return;
  /* no handshake for this client */
  if (client->headers == NULL || client->headers->ws_accept == NULL)
    return;
  FUNC1 (client, pa->type, pa->data, pa->len);
}