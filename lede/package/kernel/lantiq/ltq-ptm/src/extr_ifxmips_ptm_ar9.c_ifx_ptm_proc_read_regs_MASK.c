#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  DM_RXCB ; 
 int /*<<< orphan*/  DM_RXCFG ; 
 int /*<<< orphan*/  DM_RXDB ; 
 int /*<<< orphan*/  DM_RXPGCNT ; 
 int /*<<< orphan*/  DM_RXPKTCNT ; 
 int /*<<< orphan*/  DS_RXCB ; 
 int /*<<< orphan*/  DS_RXCFG ; 
 int /*<<< orphan*/  DS_RXDB ; 
 int /*<<< orphan*/  DS_RXPGCNT ; 
 int /*<<< orphan*/  EMA_CFG ; 
 int /*<<< orphan*/  EMA_CMDCFG ; 
 int /*<<< orphan*/  EMA_DATACFG ; 
 int /*<<< orphan*/  EMA_IER ; 
 int /*<<< orphan*/  FFSM_CFG0 ; 
 int /*<<< orphan*/  FFSM_CFG1 ; 
 int /*<<< orphan*/  FFSM_DBA0 ; 
 int /*<<< orphan*/  FFSM_DBA1 ; 
 int /*<<< orphan*/  FFSM_IDLE_HEAD_BC0 ; 
 int /*<<< orphan*/  FFSM_IDLE_HEAD_BC1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MBOX_IGU1_IER ; 
 int /*<<< orphan*/  MBOX_IGU1_ISR ; 
 int /*<<< orphan*/  MBOX_IGU3_IER ; 
 int /*<<< orphan*/  MBOX_IGU3_ISR ; 
 int /*<<< orphan*/  RFBI_CFG ; 
 int /*<<< orphan*/  SB_MST_PRI0 ; 
 int /*<<< orphan*/  SB_MST_PRI1 ; 
 int /*<<< orphan*/  SFSM_CBA0 ; 
 int /*<<< orphan*/  SFSM_CBA1 ; 
 int /*<<< orphan*/  SFSM_CFG0 ; 
 int /*<<< orphan*/  SFSM_CFG1 ; 
 int /*<<< orphan*/  SFSM_DBA0 ; 
 int /*<<< orphan*/  SFSM_DBA1 ; 
 scalar_t__ FUNC1 (char*,char*,...) ; 

int FUNC2(char *page, char **start, off_t off, int count, int *eof, void *data)
{
    int len = 0;

    len += FUNC1(page + off + len, "EMA:\n");
    len += FUNC1(page + off + len, "  SB_MST_PRI0 - 0x%08X, SB_MST_PRI1 - 0x%08X\n", FUNC0(SB_MST_PRI0), FUNC0(SB_MST_PRI1));
    len += FUNC1(page + off + len, "  EMA_CMDCFG  - 0x%08X, EMA_DATACFG - 0x%08X\n", FUNC0(EMA_CMDCFG), FUNC0(EMA_DATACFG));
    len += FUNC1(page + off + len, "  EMA_IER     - 0x%08X, EMA_CFG     - 0x%08X\n", FUNC0(EMA_IER), FUNC0(EMA_CFG));

    len += FUNC1(page + off + len, "Mailbox:\n");
    len += FUNC1(page + off + len, "  MBOX_IGU1_IER - 0x%08X, MBOX_IGU1_ISR - 0x%08X\n", FUNC0(MBOX_IGU1_IER), FUNC0(MBOX_IGU1_ISR));
    len += FUNC1(page + off + len, "  MBOX_IGU3_IER - 0x%08X, MBOX_IGU3_ISR - 0x%08X\n", FUNC0(MBOX_IGU3_IER), FUNC0(MBOX_IGU3_ISR));

    len += FUNC1(page + off + len, "TC:\n");
    len += FUNC1(page + off + len, "  RFBI_CFG  - 0x%08X\n", FUNC0(RFBI_CFG));
    len += FUNC1(page + off + len, "  SFSM_DBA0 - 0x%08X, SFSM_CBA0 - 0x%08X, SFSM_CFG0 - 0x%08X\n", FUNC0(SFSM_DBA0), FUNC0(SFSM_CBA0), FUNC0(SFSM_CFG0));
    len += FUNC1(page + off + len, "  SFSM_DBA1 - 0x%08X, SFSM_CBA1 - 0x%08X, SFSM_CFG1 - 0x%08X\n", FUNC0(SFSM_DBA1), FUNC0(SFSM_CBA1), FUNC0(SFSM_CFG1));
    len += FUNC1(page + off + len, "  FFSM_DBA0 - 0x%08X, FFSM_CFG0 - 0x%08X, IDLE_HEAD - 0x%08X\n", FUNC0(FFSM_DBA0), FUNC0(FFSM_CFG0), FUNC0(FFSM_IDLE_HEAD_BC0));
    len += FUNC1(page + off + len, "  FFSM_DBA1 - 0x%08X, FFSM_CFG1 - 0x%08X, IDLE_HEAD - 0x%08X\n", FUNC0(FFSM_DBA1), FUNC0(FFSM_CFG1), FUNC0(FFSM_IDLE_HEAD_BC1));

    len += FUNC1(page + off + len, "DPlus:\n");
    len += FUNC1(page + off + len, "  DM_RXDB    - 0x%08X, DM_RXCB     - 0x%08X, DM_RXCFG - 0x%08X\n", FUNC0(DM_RXDB), FUNC0(DM_RXCB), FUNC0(DM_RXCFG));
    len += FUNC1(page + off + len, "  DM_RXPGCNT - 0x%08X, DM_RXPKTCNT - 0x%08X\n", FUNC0(DM_RXPGCNT), FUNC0(DM_RXPKTCNT));
    len += FUNC1(page + off + len, "  DS_RXDB    - 0x%08X, DS_RXCB     - 0x%08X, DS_RXCFG - 0x%08X\n", FUNC0(DS_RXDB), FUNC0(DS_RXCB), FUNC0(DS_RXCFG));
    len += FUNC1(page + off + len, "  DS_RXPGCNT - 0x%08X\n", FUNC0(DS_RXPGCNT));

    *eof = 1;

    return len;
}