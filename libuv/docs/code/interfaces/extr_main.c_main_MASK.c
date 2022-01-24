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
struct TYPE_8__ {scalar_t__ sin_family; } ;
struct TYPE_6__ {int /*<<< orphan*/  address6; TYPE_3__ address4; } ;
struct TYPE_7__ {char* name; TYPE_1__ address; scalar_t__ is_internal; } ;
typedef  TYPE_2__ uv_interface_address_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC5() {
    char buf[512];
    uv_interface_address_t *info;
    int count, i;

    FUNC2(&info, &count);
    i = count;

    FUNC0("Number of interfaces: %d\n", count);
    while (i--) {
        uv_interface_address_t interface = info[i];

        FUNC0("Name: %s\n", interface.name);
        FUNC0("Internal? %s\n", interface.is_internal ? "Yes" : "No");
        
        if (interface.address.address4.sin_family == AF_INET) {
            FUNC3(&interface.address.address4, buf, sizeof(buf));
            FUNC0("IPv4 address: %s\n", buf);
        }
        else if (interface.address.address4.sin_family == AF_INET6) {
            FUNC4(&interface.address.address6, buf, sizeof(buf));
            FUNC0("IPv6 address: %s\n", buf);
        }

        FUNC0("\n");
    }

    FUNC1(info, count);
    return 0;
}