
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double percent; } ;


 int LOG (char*,double,int ) ;
 TYPE_1__* json_node ;
 int last_key ;
 scalar_t__ strcasecmp (int ,char*) ;

__attribute__((used)) static int json_double(void *ctx, double val) {
    LOG("double %f for key %s\n", val, last_key);
    if (strcasecmp(last_key, "percent") == 0) {
        json_node->percent = val;
    }
    return 1;
}
