
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int ) ;
 int last_key ;
 int sstrndup (char const*,size_t) ;

__attribute__((used)) static int reply_map_key_cb(void *params, const unsigned char *keyVal, size_t keyLen) {
    free(last_key);
    last_key = sstrndup((const char *)keyVal, keyLen);
    return 1;
}
