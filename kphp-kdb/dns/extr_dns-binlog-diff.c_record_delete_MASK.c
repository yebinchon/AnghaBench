#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct lev_dns_delete_records {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {scalar_t__ qtype; scalar_t__ name_len; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ record_t ;

/* Variables and functions */
 scalar_t__ LEV_DNS_DELETE_RECORDS ; 
 struct lev_dns_delete_records* FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  delete_logevents ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* last_deleted_record ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7 (record_t *r) {
  if (last_deleted_record && !FUNC1 (last_deleted_record->name, last_deleted_record->name_len, r->name, r->name_len) && last_deleted_record->qtype == r->qtype) {
    return;
  }

  FUNC5 ();
  FUNC6 (3, "Delete records for name '%.*s' of type %d.\n", r->name_len, r->name, r->qtype);
  struct lev_dns_delete_records *E = FUNC0 (LEV_DNS_DELETE_RECORDS + r->name_len, sizeof (struct lev_dns_delete_records) + r->name_len, r->qtype);
  FUNC4 (E->name, r->name, r->name_len);
  last_deleted_record = r;
  if (FUNC2 () > (1 << 23)) {
    FUNC3 (0);
  }
  delete_logevents++;
}