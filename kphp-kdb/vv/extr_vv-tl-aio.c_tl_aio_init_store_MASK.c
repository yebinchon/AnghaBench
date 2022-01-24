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
struct udp_target {scalar_t__ state; } ;
struct process_id {int dummy; } ;
struct connection {int dummy; } ;
typedef  enum tl_type { ____Placeholder_tl_type } tl_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct connection* FUNC1 (int /*<<< orphan*/ ,struct process_id*) ; 
 int /*<<< orphan*/  FUNC2 (struct process_id*) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*,long long) ; 
 int /*<<< orphan*/  FUNC4 (struct udp_target*,long long) ; 
 int tl_type_conn ; 
 int tl_type_raw_msg ; 
 scalar_t__ udp_failed ; 
 struct udp_target* FUNC5 (struct process_id*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 

int FUNC7 (enum tl_type type, struct process_id *pid, long long qid) {
  if (type == tl_type_conn) {
    struct connection *d = FUNC1 (FUNC2 (pid), pid);
    if (d) {
      FUNC6 (2, "Good connection\n");
      FUNC3 (d, qid);
      return 1;
    } else {
      FUNC6 (2, "Bad connection\n");
      return -1;
    }
  } else if (type == tl_type_raw_msg) {
    struct udp_target *S = FUNC5 (pid);
    if (S && S->state != udp_failed) {
      FUNC4 (S, qid);
      return 1;
    } else {
      return -1;
    }
  } else {
    FUNC0 (0);
    return -1;
  }
}