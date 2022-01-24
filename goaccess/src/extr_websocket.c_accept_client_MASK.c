#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_storage {int /*<<< orphan*/  ss_family; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  raddr ;
struct TYPE_5__ {int listener; int /*<<< orphan*/  remote_ip; } ;
typedef  TYPE_1__ WSClient ;
typedef  int /*<<< orphan*/  GSLList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 void* FUNC9 (struct sockaddr*) ; 

__attribute__((used)) static int
FUNC10 (int listener, GSLList ** colist)
{
  WSClient *client;
  struct sockaddr_storage raddr;
  int newfd;
  const void *src = NULL;
  socklen_t alen;

  alen = sizeof (raddr);
  if ((newfd = FUNC2 (listener, (struct sockaddr *) &raddr, &alen)) == -1)
    FUNC0 ("Unable to set accept: %s.", FUNC8 (errno));

  if (newfd == -1) {
    FUNC1 (("Unable to accept: %s.", FUNC8 (errno)));
    return newfd;
  }
  src = FUNC9 ((struct sockaddr *) &raddr);

  /* malloc a new client */
  client = FUNC6 ();
  client->listener = newfd;
  FUNC3 (raddr.ss_family, src, client->remote_ip, INET6_ADDRSTRLEN);

  /* add up our new client to keep track of */
  if (*colist == NULL)
    *colist = FUNC4 (client);
  else
    *colist = FUNC5 (*colist, client);

  /* make the socket non-blocking */
  FUNC7 (client->listener);

  return newfd;
}