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
struct TYPE_4__ {int /*<<< orphan*/  client_random; } ;
typedef  TYPE_1__ ptls_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_RANDOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC3(ptls_t *tls)
{
    FUNC0(CLIENT_RANDOM, tls,
               FUNC2(FUNC1(sizeof(tls->client_random) * 2 + 1), tls->client_random, sizeof(tls->client_random)));
}