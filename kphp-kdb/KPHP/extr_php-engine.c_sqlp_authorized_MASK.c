#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct connection {int /*<<< orphan*/  Out; int /*<<< orphan*/  status; } ;
typedef  int /*<<< orphan*/  nbw_iterator_t ;
struct TYPE_4__ {int /*<<< orphan*/  auth_state; scalar_t__ packet_state; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* sql_flush_packet ) (struct connection*,int) ;int /*<<< orphan*/  (* sql_becomes_ready ) (struct connection*) ;} ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct connection*) ; 
 TYPE_1__* FUNC1 (struct connection*) ; 
 int /*<<< orphan*/  conn_ready ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  sql_auth_initdb ; 
 int /*<<< orphan*/  sql_auth_ok ; 
 char* sql_database ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct connection*) ; 
 int /*<<< orphan*/  FUNC6 (struct connection*,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,...) ; 

int FUNC9 (struct connection *c) {
  nbw_iterator_t it;
  unsigned temp = 0x00000000;
  int len = 0;
  char ptype = 2;

  if (!sql_database || !*sql_database) {
    FUNC0(c)->auth_state = sql_auth_ok;
    c->status = conn_ready;
    FUNC0(c)->packet_state = 0;
    FUNC7 (1, "outcoming initdb successful\n");
    FUNC1(c)->sql_becomes_ready (c);
    return 0;
  }

  FUNC2 (&it, &c->Out);
  FUNC8 (&c->Out, &temp, 4);

  len += FUNC8 (&c->Out, &ptype, 1);
  if (sql_database && *sql_database) {
    len += FUNC8 (&c->Out, sql_database, (int)FUNC4 (sql_database));
  }

  FUNC3 (&it, &len, 3);

  FUNC1(c)->sql_flush_packet (c, len);

  FUNC0(c)->auth_state = sql_auth_initdb;
  return 0;
}