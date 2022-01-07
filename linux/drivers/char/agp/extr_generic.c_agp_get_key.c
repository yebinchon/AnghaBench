
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int key_list; } ;


 int MAXKEY ;
 TYPE_1__* agp_bridge ;
 int find_first_zero_bit (int ,int) ;
 int set_bit (int,int ) ;

__attribute__((used)) static int agp_get_key(void)
{
 int bit;

 bit = find_first_zero_bit(agp_bridge->key_list, MAXKEY);
 if (bit < MAXKEY) {
  set_bit(bit, agp_bridge->key_list);
  return bit;
 }
 return -1;
}
