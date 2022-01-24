#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  enc; } ;
struct TYPE_6__ {int max_header_list_size; int num_placeholders; } ;
struct TYPE_8__ {TYPE_2__ qpack; TYPE_1__ peer_settings; int /*<<< orphan*/  quic; } ;
typedef  TYPE_3__ h2o_http3_conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_HTTP3_DEFAULT_HEADER_TABLE_SIZE ; 
 int H2O_HTTP3_ERROR_FRAME ; 
#define  H2O_HTTP3_SETTINGS_HEADER_TABLE_SIZE 130 
#define  H2O_HTTP3_SETTINGS_MAX_HEADER_LIST_SIZE 129 
#define  H2O_HTTP3_SETTINGS_NUM_PLACEHOLDERS 128 
 int UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(h2o_http3_conn_t *conn, const uint8_t *payload, size_t length, const char **err_desc)
{
    const uint8_t *src = payload, *src_end = src + length;
    uint32_t header_table_size = H2O_HTTP3_DEFAULT_HEADER_TABLE_SIZE;

    FUNC0(!FUNC1(conn));

    while (src != src_end) {
        uint64_t id;
        uint64_t value;
        if ((id = FUNC3(&src, src_end)) == UINT64_MAX)
            goto Malformed;
        if ((value = FUNC3(&src, src_end)) == UINT64_MAX)
            goto Malformed;
        switch (id) {
        case H2O_HTTP3_SETTINGS_MAX_HEADER_LIST_SIZE:
            conn->peer_settings.max_header_list_size = (uint64_t)value;
            break;
        case H2O_HTTP3_SETTINGS_NUM_PLACEHOLDERS:
            if (!FUNC4(conn->quic))
                goto Malformed;
            conn->peer_settings.num_placeholders = (uint64_t)value;
            break;
        case H2O_HTTP3_SETTINGS_HEADER_TABLE_SIZE:
            header_table_size = (uint32_t)value;
            break;
        /* TODO add */
        default:
            break;
        }
    }

    conn->qpack.enc = FUNC2(header_table_size, 100 /* FIXME */);
    return 0;
Malformed:
    *err_desc = "malformed SETTINGS frame";
    return H2O_HTTP3_ERROR_FRAME;
}