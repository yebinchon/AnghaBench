
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {size_t key; } ;


 int KEY_LEN ;
 TYPE_1__* board ;
 int ** key ;

__attribute__((used)) static void xor_fw(uint8_t *data, int len)
{
 int i;

 for (i = 0; i <= len; i++) {
  data[i] ^= key[board->key][i % KEY_LEN];
 }
}
