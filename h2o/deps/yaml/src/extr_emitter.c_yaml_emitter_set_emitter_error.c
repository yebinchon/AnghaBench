
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* problem; int error; } ;
typedef TYPE_1__ yaml_emitter_t ;


 int YAML_EMITTER_ERROR ;

__attribute__((used)) static int
yaml_emitter_set_emitter_error(yaml_emitter_t *emitter, const char *problem)
{
    emitter->error = YAML_EMITTER_ERROR;
    emitter->problem = problem;

    return 0;
}
