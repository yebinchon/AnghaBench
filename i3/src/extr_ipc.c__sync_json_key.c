
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_state {int last_key; } ;


 int FREE (int ) ;
 int memcpy (int ,unsigned char const*,size_t) ;
 int scalloc (size_t,int) ;

__attribute__((used)) static int _sync_json_key(void *extra, const unsigned char *val, size_t len) {
    struct sync_state *state = extra;
    FREE(state->last_key);
    state->last_key = scalloc(len + 1, 1);
    memcpy(state->last_key, val, len);
    return 1;
}
