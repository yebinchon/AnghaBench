#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_14__ ;

/* Type definitions */
struct TYPE_21__ {size_t size; TYPE_1__* elements; } ;
struct TYPE_22__ {int /*<<< orphan*/  scalar; TYPE_2__ mapping; } ;
struct TYPE_23__ {scalar_t__ type; TYPE_3__ data; } ;
typedef  TYPE_4__ yoml_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_24__ {int len; char* base; } ;
typedef  TYPE_5__ h2o_iovec_t ;
struct TYPE_25__ {TYPE_14__* hostconf; int /*<<< orphan*/ * mimemap; int /*<<< orphan*/  globalconf; } ;
typedef  TYPE_6__ h2o_configurator_context_t ;
typedef  int /*<<< orphan*/  h2o_configurator_command_t ;
struct TYPE_20__ {TYPE_4__* value; TYPE_4__* key; } ;
struct TYPE_19__ {int /*<<< orphan*/  mimemap; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_CONFIGURATOR_FLAG_HOST ; 
 scalar_t__ YOML_TYPE_SCALAR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_6__* FUNC1 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 TYPE_14__* FUNC3 (int /*<<< orphan*/ ,TYPE_5__,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_6__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_4__*,char*) ; 

__attribute__((used)) static int FUNC10(h2o_configurator_command_t *cmd, h2o_configurator_context_t *ctx, yoml_t *node)
{
    size_t i;

    if (node->data.mapping.size == 0) {
        FUNC5(cmd, node, "the mapping cannot be empty");
        return -1;
    }

    for (i = 0; i != node->data.mapping.size; ++i) {
        yoml_t *key = node->data.mapping.elements[i].key;
        yoml_t *value = node->data.mapping.elements[i].value;
        h2o_iovec_t hostname;
        uint16_t port;
        if (key->type != YOML_TYPE_SCALAR) {
            FUNC5(cmd, key, "key (representing the hostname) must be a string");
            return -1;
        }
        if (FUNC6(key->data.scalar, FUNC8(key->data.scalar), &hostname, &port) == NULL) {
            FUNC5(cmd, key, "invalid key (must be either `host` or `host:port`)");
            return -1;
        }
        FUNC0(hostname.len != 0);
        if ((hostname.base[0] == '*' && !(hostname.len == 1 || hostname.base[1] == '.')) ||
            FUNC7(hostname.base + 1, '*', hostname.len - 1) != NULL) {
            FUNC5(cmd, key, "wildcard (*) can only be used at the start of the hostname");
            return -1;
        }
        h2o_configurator_context_t *host_ctx = FUNC1(ctx, 0);
        if ((host_ctx->hostconf = FUNC3(host_ctx->globalconf, hostname, port)) == NULL) {
            FUNC5(cmd, key, "duplicate host entry");
            FUNC2(host_ctx);
            return -1;
        }
        host_ctx->mimemap = &host_ctx->hostconf->mimemap;
        int cmd_ret = FUNC4(host_ctx, value, H2O_CONFIGURATOR_FLAG_HOST, NULL);
        FUNC2(host_ctx);
        if (cmd_ret != 0)
            return -1;
        if (FUNC9(value, "paths") == NULL) {
            FUNC5(NULL, value, "mandatory configuration directive `paths` is missing");
            return -1;
        }
    }

    return 0;
}