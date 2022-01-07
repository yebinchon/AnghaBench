
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct outputs_json_params {int cur_key; } ;


 int FREE (int ) ;

__attribute__((used)) static int outputs_null_cb(void *params_) {
    struct outputs_json_params *params = (struct outputs_json_params *)params_;

    FREE(params->cur_key);

    return 1;
}
