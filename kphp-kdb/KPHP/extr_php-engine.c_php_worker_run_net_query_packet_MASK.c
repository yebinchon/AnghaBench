#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  php_worker ;
struct TYPE_7__ {int protocol; } ;
typedef  TYPE_1__ php_net_query_packet_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  p_get 132 
#define  p_get_id 131 
#define  p_memcached 130 
#define  p_rpc 129 
#define  p_sql 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC5 (php_worker *worker, php_net_query_packet_t *query) {

  switch (query->protocol) {
    case p_memcached:
      FUNC2 (worker, query);
      break;
    case p_sql:
      FUNC4 (worker, query);
      break;
    case p_rpc:
      FUNC3 (worker, query);
      break;
    case p_get:
    case p_get_id:
      FUNC1 (worker, query);
      break;
    default:
      FUNC0 (0);
  }

}