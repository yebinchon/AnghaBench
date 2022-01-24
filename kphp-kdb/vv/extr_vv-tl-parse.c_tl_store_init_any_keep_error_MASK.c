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
struct udp_target {int dummy; } ;
struct connection {int dummy; } ;
typedef  enum tl_type { ____Placeholder_tl_type } tl_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct connection*,long long) ; 
 int FUNC2 (struct udp_target*,long long) ; 
 int FUNC3 (void*,long long) ; 
#define  tl_type_conn 130 
#define  tl_type_raw_msg 129 
#define  tl_type_tcp_raw_msg 128 

int FUNC4 (enum tl_type type, void *out, long long qid) {
  switch (type) {
  case tl_type_conn:
    return FUNC1 ((struct connection *)out, qid);
  case tl_type_raw_msg:
    return FUNC2 ((struct udp_target *)out, qid);
  case tl_type_tcp_raw_msg:
    return FUNC3 (out, qid);
  default:
    FUNC0 (0);
  }
}