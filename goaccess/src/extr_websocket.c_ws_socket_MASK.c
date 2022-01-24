#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  ov ;
struct TYPE_2__ {int /*<<< orphan*/  port; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SOMAXCONN ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct addrinfo*,struct addrinfo**) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_1__ wsconfig ; 

__attribute__((used)) static void
FUNC10 (int *listener)
{
  int ov = 1;
  struct addrinfo hints, *ai;

  /* get a socket and bind it */
  FUNC6 (&hints, 0, sizeof hints);
  hints.ai_family = AF_UNSPEC;
  hints.ai_socktype = SOCK_STREAM;
  /*hints.ai_flags = AI_PASSIVE; */
  if (FUNC4 (wsconfig.host, wsconfig.port, &hints, &ai) != 0)
    FUNC0 ("Unable to set server: %s.", FUNC3 (errno));

  /* Create a TCP socket.  */
  *listener = FUNC8 (ai->ai_family, ai->ai_socktype, ai->ai_protocol);

  /* Options */
  if (FUNC7 (*listener, SOL_SOCKET, SO_REUSEADDR, &ov, sizeof (ov)) == -1)
    FUNC0 ("Unable to set setsockopt: %s.", FUNC9 (errno));

  /* Bind the socket to the address. */
  if (FUNC1 (*listener, ai->ai_addr, ai->ai_addrlen) != 0)
    FUNC0 ("Unable to set bind: %s.", FUNC9 (errno));
  FUNC2 (ai);

  /* Tell the socket to accept connections. */
  if (FUNC5 (*listener, SOMAXCONN) == -1)
    FUNC0 ("Unable to listen: %s.", FUNC9 (errno));
}