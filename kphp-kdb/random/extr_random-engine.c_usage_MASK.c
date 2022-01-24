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
 char* FullVersionStr ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

void FUNC2 (void) {
  FUNC1 ("usage: random-engine [-h] [-v] [-N<key-len>] [-s<buffer-size>] [-p<port>] [-u<username>] [-b<backlog>] [-c<max-conn>] [-l<logname>] <password-file> \n"
      "\t%s\n"
      "\tGenerates random bytes.\n"
      "\t-v\toutput statistical and debug information into stderr\n"
      "\t[-N<key-len>]\tset Blum-Blum-Shub key-len in bits (default is 2048 bits).\n"
      "\t[-s<buffer-size>]\tset random buffer size.\n",
      FullVersionStr);
  FUNC0 (2);
}