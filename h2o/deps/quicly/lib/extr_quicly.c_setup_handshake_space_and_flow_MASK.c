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
struct st_quicly_handshake_space_t {int dummy; } ;
struct TYPE_4__ {struct st_quicly_handshake_space_t* handshake; struct st_quicly_handshake_space_t* initial; } ;
typedef  TYPE_1__ quicly_conn_t ;

/* Variables and functions */
 int PTLS_ERROR_NO_MEMORY ; 
 size_t QUICLY_EPOCH_INITIAL ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,size_t) ; 

__attribute__((used)) static int FUNC2(quicly_conn_t *conn, size_t epoch)
{
    struct st_quicly_handshake_space_t **space = epoch == QUICLY_EPOCH_INITIAL ? &conn->initial : &conn->handshake;
    if ((*space = (void *)FUNC0(sizeof(struct st_quicly_handshake_space_t))) == NULL)
        return PTLS_ERROR_NO_MEMORY;
    return FUNC1(conn, epoch);
}