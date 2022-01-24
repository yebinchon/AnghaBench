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
struct TYPE_4__ {int /*<<< orphan*/  exit; int /*<<< orphan*/  enter; } ;
struct st_h2o_file_configurator_t {TYPE_2__ super; TYPE_1__* vars; TYPE_1__* _vars_stack; } ;
typedef  int /*<<< orphan*/  h2o_globalconf_t ;
struct TYPE_3__ {int /*<<< orphan*/  index_files; } ;

/* Variables and functions */
 int H2O_CONFIGURATOR_FLAG_ALL_LEVELS ; 
 int H2O_CONFIGURATOR_FLAG_DEFERRED ; 
 int H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR ; 
 int H2O_CONFIGURATOR_FLAG_EXPECT_SEQUENCE ; 
 int H2O_CONFIGURATOR_FLAG_EXTENSION ; 
 int H2O_CONFIGURATOR_FLAG_PATH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  h2o_file_default_index_files ; 
 int /*<<< orphan*/  on_config_dir ; 
 int /*<<< orphan*/  on_config_dir_listing ; 
 int /*<<< orphan*/  on_config_enter ; 
 int /*<<< orphan*/  on_config_etag ; 
 int /*<<< orphan*/  on_config_exit ; 
 int /*<<< orphan*/  on_config_file ; 
 int /*<<< orphan*/  on_config_index ; 
 int /*<<< orphan*/  on_config_send_compressed ; 

void FUNC2(h2o_globalconf_t *globalconf)
{
    struct st_h2o_file_configurator_t *self = (void *)FUNC0(globalconf, sizeof(*self));

    self->super.enter = on_config_enter;
    self->super.exit = on_config_exit;
    self->vars = self->_vars_stack;
    self->vars->index_files = h2o_file_default_index_files;

    FUNC1(
        &self->super, "file.dir", H2O_CONFIGURATOR_FLAG_PATH | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR | H2O_CONFIGURATOR_FLAG_DEFERRED,
        on_config_dir);
    FUNC1(
        &self->super, "file.file",
        H2O_CONFIGURATOR_FLAG_PATH | H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR | H2O_CONFIGURATOR_FLAG_DEFERRED, on_config_file);
    FUNC1(&self->super, "file.index",
                                    (H2O_CONFIGURATOR_FLAG_ALL_LEVELS & ~H2O_CONFIGURATOR_FLAG_EXTENSION) |
                                        H2O_CONFIGURATOR_FLAG_EXPECT_SEQUENCE,
                                    on_config_index);
    FUNC1(&self->super, "file.etag",
                                    (H2O_CONFIGURATOR_FLAG_ALL_LEVELS & ~H2O_CONFIGURATOR_FLAG_EXTENSION) |
                                        H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_etag);
    FUNC1(&self->super, "file.send-compressed",
                                    (H2O_CONFIGURATOR_FLAG_ALL_LEVELS & ~H2O_CONFIGURATOR_FLAG_EXTENSION) |
                                        H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_send_compressed);
    FUNC1(&self->super, "file.send-gzip",
                                    (H2O_CONFIGURATOR_FLAG_ALL_LEVELS & ~H2O_CONFIGURATOR_FLAG_EXTENSION) |
                                        H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_send_compressed);
    FUNC1(&self->super, "file.dirlisting",
                                    (H2O_CONFIGURATOR_FLAG_ALL_LEVELS & ~H2O_CONFIGURATOR_FLAG_EXTENSION) |
                                        H2O_CONFIGURATOR_FLAG_EXPECT_SCALAR,
                                    on_config_dir_listing);
}