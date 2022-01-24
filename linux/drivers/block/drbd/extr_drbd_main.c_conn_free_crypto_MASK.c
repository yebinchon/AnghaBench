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
struct drbd_connection {int /*<<< orphan*/ * int_dig_vv; int /*<<< orphan*/ * int_dig_in; int /*<<< orphan*/ * peer_integrity_tfm; int /*<<< orphan*/ * integrity_tfm; int /*<<< orphan*/ * cram_hmac_tfm; int /*<<< orphan*/ * verify_tfm; int /*<<< orphan*/ * csums_tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drbd_connection*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct drbd_connection *connection)
{
	FUNC1(connection);

	FUNC0(connection->csums_tfm);
	FUNC0(connection->verify_tfm);
	FUNC0(connection->cram_hmac_tfm);
	FUNC0(connection->integrity_tfm);
	FUNC0(connection->peer_integrity_tfm);
	FUNC2(connection->int_dig_in);
	FUNC2(connection->int_dig_vv);

	connection->csums_tfm = NULL;
	connection->verify_tfm = NULL;
	connection->cram_hmac_tfm = NULL;
	connection->integrity_tfm = NULL;
	connection->peer_integrity_tfm = NULL;
	connection->int_dig_in = NULL;
	connection->int_dig_vv = NULL;
}