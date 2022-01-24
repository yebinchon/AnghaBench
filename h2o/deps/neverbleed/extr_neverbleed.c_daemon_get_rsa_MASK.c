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
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ ** keys; } ;
struct TYPE_4__ {TYPE_1__ keys; } ;
typedef  int /*<<< orphan*/  RSA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__ daemon_vars ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static RSA *FUNC3(size_t key_index)
{
    RSA *rsa;

    FUNC1(&daemon_vars.keys.lock);
    rsa = daemon_vars.keys.keys[key_index];
    if (rsa)
        FUNC0(rsa);
    FUNC2(&daemon_vars.keys.lock);

    return rsa;
}