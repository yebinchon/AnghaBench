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
struct TYPE_4__ {scalar_t__ ssl; scalar_t__ sockqueue; scalar_t__ headers; } ;
typedef  TYPE_1__ WSClient ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3 (void *value, void *user_data)
{
  WSClient *client = value;
  (void) (user_data);

  if (client == NULL)
    return 1;

  if (client->headers)
    FUNC0 (client->headers);
  if (client->sockqueue)
    FUNC1 (client);
#ifdef HAVE_LIBSSL
  if (client->ssl)
    ws_shutdown_dangling_clients (client);
#endif

  return 0;
}