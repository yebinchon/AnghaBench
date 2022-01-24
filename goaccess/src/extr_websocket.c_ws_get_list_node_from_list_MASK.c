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
typedef  int /*<<< orphan*/  GSLList ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  ws_find_client_sock_in_list ; 

__attribute__((used)) static GSLList *
FUNC1 (int listener, GSLList ** colist)
{
  GSLList *match = NULL;

  /* Find the client data for the socket in use */
  if (!(match = FUNC0 (*colist, ws_find_client_sock_in_list, &listener)))
    return NULL;
  return match;
}