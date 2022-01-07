
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ptm_itf {size_t tx_desc_pos; } ;
struct TYPE_4__ {scalar_t__ own; } ;
struct TYPE_3__ {struct ptm_itf* itf; } ;


 TYPE_2__* CPU_TO_WAN_TX_DESC_BASE ;
 int CPU_TO_WAN_TX_DESC_NUM ;
 TYPE_1__ g_ptm_priv_data ;

__attribute__((used)) static inline int get_tx_desc(unsigned int itf, unsigned int *f_full)
{
    int desc_base = -1;
    struct ptm_itf *p_itf = &g_ptm_priv_data.itf[0];




    *f_full = 1;

    if ( CPU_TO_WAN_TX_DESC_BASE[p_itf->tx_desc_pos].own == 0 ) {
        desc_base = p_itf->tx_desc_pos;
        if ( ++(p_itf->tx_desc_pos) == CPU_TO_WAN_TX_DESC_NUM )
            p_itf->tx_desc_pos = 0;
        if ( CPU_TO_WAN_TX_DESC_BASE[p_itf->tx_desc_pos].own == 0 )
            *f_full = 0;
    }

    return desc_base;
}
