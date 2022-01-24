#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  listener; } ;
typedef  TYPE_1__ WSClient ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EWOULDBLOCK ; 
 int WS_CLOSE ; 
 int WS_ERR ; 
 int WS_READING ; 
 scalar_t__ errno ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int,int) ; 

__attribute__((used)) static int
FUNC2 (WSClient * client, char *buffer, int size)
{
  int bytes = 0;

  bytes = FUNC0 (client->listener, buffer, size, 0);

  if (bytes == -1 && (errno == EAGAIN || errno == EWOULDBLOCK))
    return FUNC1 (client, WS_READING, bytes);
  else if (bytes == -1 || bytes == 0)
    return FUNC1 (client, WS_ERR | WS_CLOSE, bytes);

  return bytes;
}