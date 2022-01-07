
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct outputs_json_params {int cur_key; } ;


 int FREE (int ) ;
 int sasprintf (int *,char*,size_t,unsigned char const*) ;

__attribute__((used)) static int outputs_map_key_cb(void *params_, const unsigned char *keyVal, size_t keyLen) {
    struct outputs_json_params *params = (struct outputs_json_params *)params_;
    FREE(params->cur_key);
    sasprintf(&(params->cur_key), "%.*s", keyLen, keyVal);
    return 1;
}
