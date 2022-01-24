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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3 (void) {
  FUNC1 (stderr, "%s\n", FullVersionStr);
  FUNC1 (stderr, "Commits transaction to the auxiliary binlog.\n");
  FUNC1 (stderr,
           "./copyexec-commit -P<private-key-prefix> -T<transaction-dir> [-u<username>] [-v] [-l<log-name>] <binlog>\n"
                   "\t-P<private-key-prefix>\t(mandatory option), full private key name is concatenation of <private-key-prefix> and key_id found in action list file.\n"
                   "\t-T<transaction-dir>\t(mandatory option), set transaction dir, which should contain \"actions\" file and other tmp files\n"
                   "\t-1\tcompress snapshot faster\n"
                   "\t-9\tcompress snapshot better (default)\n"
                   "\t-M<max-transaction-size>\n"
                   "\t-E<volume-id>\tcreates new empty binlog, volume-id is a string.\n"
                   "\t-u<username>\tused only in create empty binlog mode\n"
                   "\t-v\tincrease verbosity level\n\n"
                   );
  FUNC2 ();
  FUNC0 (2);
}