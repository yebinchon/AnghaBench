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
struct stat {scalar_t__ st_size; } ;

/* Variables and functions */
 scalar_t__ aux_log_readto_pos ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exec_transaction ; 
 int /*<<< orphan*/  fd_aux_binlog ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static void FUNC2 (void) {
  struct stat st;
  if (FUNC1 (fd_aux_binlog, &st) >= 0 && st.st_size > aux_log_readto_pos) {
    FUNC0 (aux_log_readto_pos, exec_transaction);
  }
}