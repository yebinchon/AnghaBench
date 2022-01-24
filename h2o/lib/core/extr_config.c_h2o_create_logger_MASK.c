#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ size; TYPE_3__** entries; } ;
struct TYPE_10__ {TYPE_5__ _loggers; TYPE_1__* global; } ;
typedef  TYPE_2__ h2o_pathconf_t ;
struct TYPE_11__ {scalar_t__ _config_slot; } ;
typedef  TYPE_3__ h2o_logger_t ;
struct TYPE_9__ {int /*<<< orphan*/  _num_config_slots; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,size_t) ; 

h2o_logger_t *FUNC3(h2o_pathconf_t *conf, size_t sz)
{
    h2o_logger_t *logger = FUNC0(sz);

    FUNC2(logger, 0, sz);
    logger->_config_slot = conf->global->_num_config_slots++;

    FUNC1(NULL, &conf->_loggers, conf->_loggers.size + 1);
    conf->_loggers.entries[conf->_loggers.size++] = logger;

    return logger;
}