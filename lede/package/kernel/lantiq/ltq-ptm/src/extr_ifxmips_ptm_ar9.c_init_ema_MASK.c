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

/* Variables and functions */
 int /*<<< orphan*/  EMA_CFG ; 
 int /*<<< orphan*/  EMA_CMDCFG ; 
 int EMA_CMD_BASE_ADDR ; 
 int EMA_CMD_BUF_LEN ; 
 int /*<<< orphan*/  EMA_DATACFG ; 
 int EMA_DATA_BASE_ADDR ; 
 int EMA_DATA_BUF_LEN ; 
 int /*<<< orphan*/  EMA_IER ; 
 int EMA_READ_BURST ; 
 int EMA_WRITE_BURST ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SB_MST_PRI0 ; 
 int /*<<< orphan*/  SB_MST_PRI1 ; 

__attribute__((used)) static inline void FUNC1(void)
{
    //  Configure share buffer master selection
    FUNC0(1, SB_MST_PRI0);
    FUNC0(1, SB_MST_PRI1);

    //  EMA Settings
    FUNC0((EMA_CMD_BUF_LEN << 16) | (EMA_CMD_BASE_ADDR >> 2), EMA_CMDCFG);
    FUNC0((EMA_DATA_BUF_LEN << 16) | (EMA_DATA_BASE_ADDR >> 2), EMA_DATACFG);
    FUNC0(0x000000FF, EMA_IER);
    FUNC0(EMA_READ_BURST | (EMA_WRITE_BURST << 2), EMA_CFG);
}