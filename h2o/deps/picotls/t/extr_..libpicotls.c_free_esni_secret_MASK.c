#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_4__* base; } ;
struct TYPE_9__ {TYPE_1__ pubkey; } ;
struct TYPE_10__ {int len; TYPE_4__* base; } ;
struct TYPE_11__ {TYPE_2__ client; TYPE_3__ secret; } ;
typedef  TYPE_4__ ptls_esni_secret_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int) ; 

__attribute__((used)) static void FUNC3(ptls_esni_secret_t **esni, int is_server)
{
    FUNC0(*esni != NULL);
    if ((*esni)->secret.base != NULL) {
        FUNC2((*esni)->secret.base, (*esni)->secret.len);
        FUNC1((*esni)->secret.base);
    }
    if (!is_server)
        FUNC1((*esni)->client.pubkey.base);
    FUNC2((*esni), sizeof(**esni));
    FUNC1(*esni);
    *esni = NULL;
}