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
struct udp_target {int /*<<< orphan*/  state; } ;
struct process_id {int dummy; } ;
struct connection {int dummy; } ;
typedef  enum tl_type { ____Placeholder_tl_type } tl_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct connection* FUNC2 (int /*<<< orphan*/ ,struct process_id*) ; 
 int /*<<< orphan*/  FUNC3 (struct process_id*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (struct connection*,long long) ; 
 int /*<<< orphan*/  FUNC5 (struct udp_target*,long long) ; 
 int /*<<< orphan*/  FUNC6 (struct connection*,long long) ; 
#define  tl_type_conn 130 
#define  tl_type_raw_msg 129 
#define  tl_type_tcp_raw_msg 128 
 int /*<<< orphan*/  udp_failed ; 
 struct udp_target* FUNC7 (struct process_id*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 

int FUNC9 (enum tl_type type, struct process_id *pid, long long qid) {
  switch (type) {
  case tl_type_conn:
    {
      struct connection *d = FUNC2 (FUNC3 (pid), pid);
      if (d) {
        FUNC8 (2, "Good connection\n");
        FUNC4 (d, qid);
        return 1;
      } else {
        FUNC8 (2, "Bad connection\n");
        return -1;
      }
    }
  case tl_type_raw_msg:
    {
      struct udp_target *S = FUNC7 (pid);
      if (S && S->state != udp_failed) {
        FUNC5 (S, qid);
        return 1;
      } else {
        return -1;
      }
    }
  case tl_type_tcp_raw_msg:
    {
      struct connection *d = FUNC2 (FUNC3 (pid), pid);
      if (d) {
        FUNC8 (2, "Good connection\n");
        FUNC6 (d, qid);
        return 1;
      } else {
        FUNC8 (2, "Bad connection\n");
        return -1;
      }
    }
  default:
    FUNC1 (stderr, "type = %d\n", type);
    FUNC0 (0);
    return 0;
  }
}