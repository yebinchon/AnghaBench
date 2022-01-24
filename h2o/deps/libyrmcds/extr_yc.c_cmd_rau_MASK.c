#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int serial; } ;
typedef  TYPE_1__ yrmcds_response ;
typedef  int /*<<< orphan*/  yrmcds_error ;
typedef  int /*<<< orphan*/  yrmcds ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ quiet ; 
 size_t FUNC5 (char*,char**) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,char*,size_t,int,int,scalar_t__,int*) ; 

int FUNC11(int argc, char** argv, yrmcds* s) {
    if( argc < 2 || 4 < argc ) {
        FUNC2(stderr, "Wrong number of arguments.\n");
        return 1;
    }
    const char* key = argv[0];
    char* data = NULL;
    size_t data_len = FUNC5(argv[1], &data);
    if( data == NULL ) {
        FUNC2(stderr, "Failed to read data.\n");
        return 2;
    }
    uint32_t expire = 0;
    uint32_t flags = 0;

    if( argc > 2 )
        expire = (uint32_t)FUNC7(argv[2], NULL, 0);
    if( argc > 3 )
        flags = (uint32_t)FUNC7(argv[3], NULL, 0);

    yrmcds_response r[1];
    uint32_t serial;
    yrmcds_error e = FUNC10(s, key, FUNC6(key), data, data_len,
                                           flags, expire, quiet, &serial);
    FUNC3(data);
    FUNC0(e);
    if( quiet ) {
        e = FUNC8(s, &serial);
        FUNC0(e);
    }
    if( debug )
        FUNC2(stderr, "request serial = %u\n", serial);
    while( 1 ) {
        e = FUNC9(s, r);
        FUNC0(e);
        if( debug )
            FUNC4(r);
        FUNC1(r);
        if( r->serial == serial )
            break;
    }
    return 0;
}