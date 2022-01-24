#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WSClient ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EPIPE ; 
 scalar_t__ EWOULDBLOCK ; 
 int WS_CLOSE ; 
 int WS_ERR ; 
 scalar_t__ errno ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int
FUNC3 (WSClient * client, const char *buffer, int len)
{
  int bytes = 0;

  bytes = FUNC0 (client, buffer, len);
  if (bytes == -1 && errno == EPIPE)
    return FUNC2 (client, WS_ERR | WS_CLOSE, bytes);

  /* did not send all of it... buffer it for a later attempt */
  if (bytes < len || (bytes == -1 && (errno == EAGAIN || errno == EWOULDBLOCK)))
    FUNC1 (client, buffer, len, bytes);

  return bytes;
}