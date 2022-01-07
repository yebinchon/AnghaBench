
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int key_len; int (* fn ) (unsigned char*) ;int const member_1; int const member_0; } ;
typedef TYPE_1__ KeygenTV ;
 int printf (char*,...) ;
 int sodium_free (unsigned char*) ;
 scalar_t__ sodium_malloc (unsigned int) ;
 int stub1 (unsigned char*) ;

__attribute__((used)) static void
tv_keygen(void)
{
    static const KeygenTV tvs[] = {
        { 156, 163 },
        { 161, 162 },
        { 170, 171 },
        { 157, 158 },
        { 159, 160 },
        { 152, 155 },
        { 153, 154 },
        { 150, 151 },
        { 148, 149 },
        { 146, 147 },
        { 167, 168 },
        { 166, 169 },
        { 167, 168 },
        { 164, 165 },
        { 142, 143 },
        { 144, 145 },
        { 140, 141 },
        { 138, 139 },
        { 132, 137 },
        { 133, 136 },
        { 134, 135 },
        { 130, 131 },
        { 128, 129 }
    };
    const KeygenTV *tv;
    unsigned char *key;
    size_t i;
    int j;

    for (i = 0; i < (sizeof tvs) / (sizeof tvs[0]); i++) {
        tv = &tvs[i];
        key = (unsigned char *) sodium_malloc(tv->key_len);
        key[tv->key_len - 1U] = 0;
        for (j = 0; j < 10000; j++) {
            tv->fn(key);
            if (key[tv->key_len - 1U] != 0) {
                break;
            }
        }
        sodium_free(key);
        if (j >= 10000) {
            printf("Buffer underflow with test vector %u\n", (unsigned int) i);
        }
    }
    printf("tv_keygen: ok\n");
}
