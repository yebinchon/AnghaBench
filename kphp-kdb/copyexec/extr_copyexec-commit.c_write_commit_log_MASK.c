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
 int COMMIT_LOG_BUFF_SIZE ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* binlog_name ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int committed_transaction_size ; 
 int FUNC2 (char*,int,int) ; 
 int FUNC3 (char*,int,char*,...) ; 
 char* transaction_dirname ; 
 int transactions ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 

__attribute__((used)) static void FUNC5 (void) {
  char a[PATH_MAX], b[COMMIT_LOG_BUFF_SIZE];
  FUNC0 (FUNC3 (a, PATH_MAX, "%s/.commit.log", transaction_dirname) < PATH_MAX);
  int fd = FUNC2 (a, O_CREAT | O_TRUNC | O_WRONLY | O_EXCL, 0640);
  int n = FUNC3 (b, COMMIT_LOG_BUFF_SIZE,
    "transaction_id\t%d\n"
    "committed_transaction_size\t%u\n"
    "aux_binlog_path\t%s\n",
    transactions,
    committed_transaction_size,
    binlog_name);
  if (n > COMMIT_LOG_BUFF_SIZE - 1) {
    n = COMMIT_LOG_BUFF_SIZE - 1;
  }
  FUNC4 (fd, b, n);
  FUNC1 (fd);
}