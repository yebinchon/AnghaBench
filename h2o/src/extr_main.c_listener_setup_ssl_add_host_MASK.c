#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ size; int /*<<< orphan*/ * entries; } ;
struct listener_ssl_config_t {TYPE_3__ hostnames; } ;
struct TYPE_4__ {char* base; int len; } ;
typedef  TYPE_1__ h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,scalar_t__) ; 
 char* FUNC2 (char*,char,int) ; 

__attribute__((used)) static void FUNC3(struct listener_ssl_config_t *ssl_config, h2o_iovec_t host)
{
    const char *host_end = FUNC2(host.base, ':', host.len);
    if (host_end == NULL)
        host_end = host.base + host.len;

    FUNC1(NULL, &ssl_config->hostnames, ssl_config->hostnames.size + 1);
    ssl_config->hostnames.entries[ssl_config->hostnames.size++] = FUNC0(host.base, host_end - host.base);
}