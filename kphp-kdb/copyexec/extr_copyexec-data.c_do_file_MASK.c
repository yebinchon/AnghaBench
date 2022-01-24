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
struct lev_copyexec_aux_transaction_cmd_file {int dummy; } ;

/* Variables and functions */
 int cur_transaction_result ; 
 int FUNC0 (struct lev_copyexec_aux_transaction_cmd_file*) ; 
 int /*<<< orphan*/  unpack_filename_buff ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2 (struct lev_copyexec_aux_transaction_cmd_file *E) {
  int r = FUNC0 (E);
  if (r < 0) {
    FUNC1 ("unpack_file (%s) failed at the line %d", unpack_filename_buff, -r);
    cur_transaction_result = 0x00ff;
    //cur_transaction_last_cmd_status = 0xff00; /* terminated with exit code = 255 */
  }
  return r;
}