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
struct TYPE_4__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * data; } ;
struct TYPE_3__ {TYPE_2__ response; } ;
struct listener_ssl_config_t {TYPE_1__ ocsp_stapling; } ;
typedef  int /*<<< orphan*/  h2o_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct listener_ssl_config_t *ssl_conf, h2o_buffer_t *resp)
{
    FUNC1(&ssl_conf->ocsp_stapling.response.mutex);
    if (ssl_conf->ocsp_stapling.response.data != NULL)
        FUNC0(&ssl_conf->ocsp_stapling.response.data);
    ssl_conf->ocsp_stapling.response.data = resp;
    FUNC2(&ssl_conf->ocsp_stapling.response.mutex);
}