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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* progname ; 

void FUNC2 (void) {
  FUNC1 ("usage: %s [-v] [-u<username>] [-l<log-name>] [-t<target-host>] [-p<target-port>] [-m<max-ad-id>]\n"
	  "\t-v\toutput statistical and debug information into stderr\n",
	  progname);
  FUNC0(2);
}