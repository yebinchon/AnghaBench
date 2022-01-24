#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/  bita_avail; int /*<<< orphan*/  reserved_size; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ ** keys; TYPE_3__ rsa_slots; } ;
struct TYPE_5__ {TYPE_1__ keys; } ;
typedef  int /*<<< orphan*/  RSA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  NEVERBLEED_TYPE_RSA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ daemon_vars ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC7(RSA *rsa)
{
    FUNC5(&daemon_vars.keys.lock);

    FUNC2(NEVERBLEED_TYPE_RSA, &daemon_vars.keys.rsa_slots);

    size_t index = FUNC3(daemon_vars.keys.rsa_slots.bita_avail, daemon_vars.keys.rsa_slots.reserved_size, 0);

    if (index == SIZE_MAX)
        FUNC4("no available slot for key");

    /* set slot as unavailable */
    FUNC0(daemon_vars.keys.rsa_slots.bita_avail, index);

    daemon_vars.keys.rsa_slots.size++;
    daemon_vars.keys.keys[index] = rsa;
    FUNC1(rsa);
    FUNC6(&daemon_vars.keys.lock);

    return index;
}