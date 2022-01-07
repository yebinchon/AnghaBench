
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int trayclients; int workspaces; int name; } ;
typedef TYPE_1__ i3_output ;


 int FREE (int ) ;

__attribute__((used)) static void clear_output(i3_output *output) {
    FREE(output->name);
    FREE(output->workspaces);
    FREE(output->trayclients);
}
