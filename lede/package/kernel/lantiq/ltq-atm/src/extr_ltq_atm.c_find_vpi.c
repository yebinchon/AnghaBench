
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned int conn_table; TYPE_2__* conn; } ;
struct TYPE_5__ {TYPE_1__* vcc; } ;
struct TYPE_4__ {unsigned int vpi; } ;


 int MAX_PVC_NUMBER ;
 TYPE_3__ g_atm_priv_data ;

__attribute__((used)) static inline int find_vpi(unsigned int vpi)
{
 int i;
 unsigned int bit;

 for ( i = 0, bit = 1; i < MAX_PVC_NUMBER; i++, bit <<= 1 ) {
  if ( (g_atm_priv_data.conn_table & bit) != 0
    && g_atm_priv_data.conn[i].vcc != ((void*)0)
    && vpi == g_atm_priv_data.conn[i].vcc->vpi )
   return i;
 }

 return -1;
}
