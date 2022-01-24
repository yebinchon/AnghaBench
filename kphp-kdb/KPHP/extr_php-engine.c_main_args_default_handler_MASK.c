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

/* Variables and functions */
 void* BACKLOG ; 
 void* MAX_CONNECTIONS ; 
 int MCL_CURRENT ; 
 int MCL_FUTURE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* backlog ; 
 int daemonize ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int max_memory ; 
 void* maxconn ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  username ; 
 int /*<<< orphan*/  verbosity ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 

int FUNC5 (int i) {
  switch (i) {
  case 'b':
    backlog = FUNC0 (optarg);
    if (backlog <= 0) {
      backlog = BACKLOG;
    }
    break;
  case 'c':
    maxconn = FUNC0 (optarg);
    if (maxconn <= 0 || maxconn > MAX_CONNECTIONS) {
      maxconn = MAX_CONNECTIONS;
    }
    break;
  case 'l':
    FUNC1 (optarg);
    break;
  case 'm':
    max_memory = FUNC0 (optarg);
    if (max_memory < 1) {
      max_memory = 1;
    }
    if (max_memory > 2047) {
      max_memory = 2047;
    }
    max_memory *= 1048576;
    break;
  case 'u':
    username = optarg;
    break;
  case 'd':
    daemonize ^= 1;
    break;
  case 'h':
    FUNC3();
    return 2;
  case 'k':
    if (FUNC2 (MCL_CURRENT | MCL_FUTURE) != 0) {
      FUNC4 (-1, "error: fail to lock paged memory\n");
    }
    break;
  case 'v':
    verbosity++;
    break;
  default:
    return 0;
  }
  return 1;
}