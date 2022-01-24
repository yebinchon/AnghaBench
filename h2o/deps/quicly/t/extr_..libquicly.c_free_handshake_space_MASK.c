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
struct TYPE_4__ {int /*<<< orphan*/ * aead; } ;
struct TYPE_3__ {TYPE_2__ egress; TYPE_2__ ingress; } ;
struct st_quicly_handshake_space_t {int /*<<< orphan*/  super; TYPE_1__ cipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct st_quicly_handshake_space_t **space)
{
    if (*space != NULL) {
        if ((*space)->cipher.ingress.aead != NULL)
            FUNC0(&(*space)->cipher.ingress);
        if ((*space)->cipher.egress.aead != NULL)
            FUNC0(&(*space)->cipher.egress);
        FUNC1(&(*space)->super);
        *space = NULL;
    }
}