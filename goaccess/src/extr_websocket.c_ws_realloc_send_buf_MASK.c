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
struct TYPE_6__ {int qlen; char* queued; } ;
typedef  TYPE_1__ WSQueue ;
struct TYPE_7__ {int /*<<< orphan*/  status; TYPE_1__* sockqueue; } ;
typedef  TYPE_2__ WSClient ;

/* Variables and functions */
 int WS_CLOSE ; 
 int WS_ERR ; 
 int WS_THROTTLE_THLD ; 
 int /*<<< orphan*/  WS_THROTTLING ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 char* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*,int,int) ; 

__attribute__((used)) static int
FUNC4 (WSClient * client, const char *buf, int len)
{
  WSQueue *queue = client->sockqueue;
  char *tmp = NULL;
  int newlen = 0;

  newlen = queue->qlen + len;
  tmp = FUNC1 (queue->queued, newlen);
  if (tmp == NULL && newlen > 0) {
    FUNC2 (client);
    return FUNC3 (client, WS_ERR | WS_CLOSE, 1);
  }
  queue->queued = tmp;
  FUNC0 (queue->queued + queue->qlen, buf, len);
  queue->qlen += len;

  /* client probably  too slow, so stop queueing until everything is
   * sent */
  if (queue->qlen >= WS_THROTTLE_THLD)
    client->status |= WS_THROTTLING;

  return 0;
}