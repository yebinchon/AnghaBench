#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__** cipher_suites; TYPE_2__** key_exchanges; } ;
typedef  TYPE_1__ ptls_esni_context_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* on_exchange ) (TYPE_2__**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(ptls_esni_context_t *esni)
{
    size_t i;

    if (esni->key_exchanges != NULL) {
        for (i = 0; esni->key_exchanges[i] != NULL; ++i)
            esni->key_exchanges[i]->on_exchange(esni->key_exchanges + i, 1, NULL, FUNC1(NULL, 0));
        FUNC0(esni->key_exchanges);
    }
    FUNC0(esni->cipher_suites);
}