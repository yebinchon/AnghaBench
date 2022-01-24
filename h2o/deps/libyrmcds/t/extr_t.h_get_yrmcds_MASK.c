#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  yrmcds ;
typedef  int uint16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 

__attribute__((used)) static yrmcds* FUNC4(yrmcds* c) {
    const char* host = FUNC2("YRMCDS_HOST");
    if( host == NULL ) {
        return NULL;
    }
    uint16_t port = 11211;
    if( FUNC2("YRMCDS_PORT") ) {
        port = (uint16_t)FUNC0(FUNC2("YRMCDS_PORT"));
    }

    FUNC1( FUNC3(c, host, port) );
    return c;
}