#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int off_t ;
struct TYPE_10__ {int rx_tc_crc_len; int tx_tc_crc_len; scalar_t__ tx_eth_crc_gen; scalar_t__ tx_tc_crc_gen; scalar_t__ rx_eth_crc_present; scalar_t__ rx_eth_crc_check; scalar_t__ rx_tc_crc_check; } ;
struct TYPE_9__ {int desba; int deslen; int vlddes; } ;
struct TYPE_8__ {int mfs; unsigned int dmach; int local_state; int partner_state; } ;
struct TYPE_7__ {int desba; int deslen; int vlddes; } ;
struct TYPE_6__ {int tx_cwth2; int tx_cwth1; } ;

/* Variables and functions */
 TYPE_5__* CFG_ETH_EFMTC_CRC ; 
 scalar_t__ CFG_WAN_WRDES_DELAY ; 
 scalar_t__ CFG_WRX_DMACH_ON ; 
 scalar_t__ CFG_WRX_LOOK_BITTH ; 
 scalar_t__ CFG_WTX_DMACH_ON ; 
 int FUNC0 (scalar_t__) ; 
 unsigned int KSEG1 ; 
 int MAX_RX_DMA_CHANNEL_NUMBER ; 
 int MAX_TX_DMA_CHANNEL_NUMBER ; 
 TYPE_4__* FUNC1 (int) ; 
 TYPE_3__* FUNC2 (int) ; 
 TYPE_2__* FUNC3 (int) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 scalar_t__ FUNC7 (char*,char*,...) ; 

__attribute__((used)) static int FUNC8(char *page, char **start, off_t off, int count, int *eof, void *data)
{
    int len = 0;
    int len_max = off + count;
    char *pstr;
    char str[2048];
    int llen = 0;
    int i;
    unsigned long bit;

    pstr = *start = page;

    FUNC5();

    llen += FUNC7(str + llen, "CFG_WAN_WRDES_DELAY (0x%08X): %d\n", (unsigned int)CFG_WAN_WRDES_DELAY, FUNC0(CFG_WAN_WRDES_DELAY));
    llen += FUNC7(str + llen, "CFG_WRX_DMACH_ON    (0x%08X):", (unsigned int)CFG_WRX_DMACH_ON);
    for ( i = 0, bit = 1; i < MAX_RX_DMA_CHANNEL_NUMBER; i++, bit <<= 1 )
        llen += FUNC7(str + llen, " %d - %s", i, (FUNC0(CFG_WRX_DMACH_ON) & bit) ? "on " : "off");
    llen += FUNC7(str + llen, "\n");
    llen += FUNC7(str + llen, "CFG_WTX_DMACH_ON    (0x%08X):", (unsigned int)CFG_WTX_DMACH_ON);
    for ( i = 0, bit = 1; i < MAX_TX_DMA_CHANNEL_NUMBER; i++, bit <<= 1 )
        llen += FUNC7(str + llen, " %d - %s", i, (FUNC0(CFG_WTX_DMACH_ON) & bit) ? "on " : "off");
    llen += FUNC7(str + llen, "\n");
    llen += FUNC7(str + llen, "CFG_WRX_LOOK_BITTH  (0x%08X): %d\n", (unsigned int)CFG_WRX_LOOK_BITTH, FUNC0(CFG_WRX_LOOK_BITTH));
    llen += FUNC7(str + llen, "CFG_ETH_EFMTC_CRC   (0x%08X): rx_tc_crc_len    - %2d,  rx_tc_crc_check    - %s\n", (unsigned int)CFG_ETH_EFMTC_CRC, CFG_ETH_EFMTC_CRC->rx_tc_crc_len, CFG_ETH_EFMTC_CRC->rx_tc_crc_check ? " on" : "off");
    llen += FUNC7(str + llen, "                                  rx_eth_crc_check - %s, rx_eth_crc_present - %s\n",   CFG_ETH_EFMTC_CRC->rx_eth_crc_check ? " on" : "off", CFG_ETH_EFMTC_CRC->rx_eth_crc_present ? " on" : "off");
    llen += FUNC7(str + llen, "                                  tx_tc_crc_len    - %2d,  tx_tc_crc_gen      - %s\n", CFG_ETH_EFMTC_CRC->tx_tc_crc_len, CFG_ETH_EFMTC_CRC->tx_tc_crc_gen ? " on" : "off");
    llen += FUNC7(str + llen, "                                  tx_eth_crc_gen   - %s\n", CFG_ETH_EFMTC_CRC->tx_eth_crc_gen ? " on" : "off");

    llen += FUNC7(str + llen, "RX Port:\n");
    for ( i = 0; i < MAX_RX_DMA_CHANNEL_NUMBER; i++ )
        llen += FUNC7(str + llen, "  %d (0x%08X). mfs - %5d, dmach - %d, local_state - %d, partner_state - %d\n", i, (unsigned int)FUNC2(i), FUNC2(i)->mfs, FUNC2(i)->dmach, FUNC2(i)->local_state, FUNC2(i)->partner_state);
    llen += FUNC7(str + llen, "RX DMA Channel:\n");
    for ( i = 0; i < MAX_RX_DMA_CHANNEL_NUMBER; i++ )
        llen += FUNC7(str + llen, "  %d (0x%08X). desba - 0x%08X (0x%08X), deslen - %d, vlddes - %d\n", i, (unsigned int)FUNC1(i), FUNC1(i)->desba, ((unsigned int)FUNC1(i)->desba << 2) | KSEG1, FUNC1(i)->deslen, FUNC1(i)->vlddes);

    llen += FUNC7(str + llen, "TX Port:\n");
    for ( i = 0; i < MAX_TX_DMA_CHANNEL_NUMBER; i++ )
        llen += FUNC7(str + llen, "  %d (0x%08X). tx_cwth2 - %d, tx_cwth1 - %d\n", i, (unsigned int)FUNC4(i), FUNC4(i)->tx_cwth2, FUNC4(i)->tx_cwth1);
    llen += FUNC7(str + llen, "TX DMA Channel:\n");
    for ( i = 0; i < MAX_TX_DMA_CHANNEL_NUMBER; i++ )
        llen += FUNC7(str + llen, "  %d (0x%08X). desba - 0x%08X (0x%08X), deslen - %d, vlddes - %d\n", i, (unsigned int)FUNC3(i), FUNC3(i)->desba, ((unsigned int)FUNC3(i)->desba << 2) | KSEG1, FUNC3(i)->deslen, FUNC3(i)->vlddes);

    if ( len <= off && len + llen > off )
    {
        FUNC6(pstr, str + off - len, len + llen - off);
        pstr += len + llen - off;
    }
    else if ( len > off )
    {
        FUNC6(pstr, str, llen);
        pstr += llen;
    }
    len += llen;
    if ( len >= len_max )
        goto PROC_READ_GENCONF_OVERRUN_END;

    *eof = 1;

    return len - off;

PROC_READ_GENCONF_OVERRUN_END:
    return len - llen - off;
}