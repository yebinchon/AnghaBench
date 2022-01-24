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
 void* FUNC0 (void*) ; 
 void* backlog ; 
 int /*<<< orphan*/  binlog_disabled ; 
 int daemonize ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* logname ; 
 void* maxconn ; 
 void* optarg ; 
 void* port ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* username ; 
 int /*<<< orphan*/  verbosity ; 

int FUNC3 (int opt) {
  switch (opt) {      
  case 'v':
    verbosity++;
    break;
  case 'h':
    FUNC2 ();
    return 2;
  case 'b':
    backlog = FUNC0 (optarg);
    if (backlog <= 0) backlog = BACKLOG;
    break;
  case 'c':
    maxconn = FUNC0 (optarg);
    if (maxconn <= 0 || maxconn > MAX_CONNECTIONS) {
      maxconn = MAX_CONNECTIONS;
    }
    break;
  case 'p':
    port = FUNC0 (optarg);
    break;
  case 'u':
    username = optarg;
    break;
  case 'l':
    logname = optarg;
    break;
  case 'd':
    daemonize ^= 1;
    break;
  case 'r':
    binlog_disabled++;
    break;
  default:
    FUNC2 ();
    FUNC1 (1);
  }
  return 0;
}