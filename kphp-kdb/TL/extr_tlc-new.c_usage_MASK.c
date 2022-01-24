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
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2 (void) {
  FUNC1 ("%s\n",  FullVersionStr);
  FUNC1 ("usage: tlc-new [-v] [-h] <TL-schema-file>\n"
      "\tTL compiler\n"
      "\t-v\toutput statistical and debug information into stderr\n"
      "\t-E\twhenever is possible output to stdout expressions\n"
      "\t-e <file>\texport serialized schema to file\n"
      "\t-w\t custom version of serialized schema (0 - very old, 1 - old, 2 - current (default))\n"
       );
  FUNC0 (2);
}