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
typedef  void uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {scalar_t__ buffer_size; scalar_t__ buffer; } ;
typedef  TYPE_1__ ipc_client ;
struct TYPE_6__ {size_t size; int /*<<< orphan*/  const type; int /*<<< orphan*/  magic; } ;
typedef  TYPE_2__ i3_ipc_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void const*,size_t const) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(ipc_client *client, size_t size, const uint32_t message_type, const uint8_t *payload) {
    const i3_ipc_header_t header = {
        .magic = {'i', '3', '-', 'i', 'p', 'c'},
        .size = size,
        .type = message_type};
    const size_t header_size = sizeof(i3_ipc_header_t);
    const size_t message_size = header_size + size;

    const bool push_now = (client->buffer_size == 0);
    client->buffer = FUNC2(client->buffer, client->buffer_size + message_size);
    FUNC1(client->buffer + client->buffer_size, ((void *)&header), header_size);
    FUNC1(client->buffer + client->buffer_size + header_size, payload, size);
    client->buffer_size += message_size;

    if (push_now) {
        FUNC0(client);
    }
}