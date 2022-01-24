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
 int /*<<< orphan*/  DREG_AR_CTRL ; 
 int /*<<< orphan*/  DREG_AR_IDLE0 ; 
 int /*<<< orphan*/  DREG_AR_IDLE1 ; 
 int /*<<< orphan*/  DREG_AT_CTRL ; 
 int /*<<< orphan*/  DREG_AT_IDLE0 ; 
 int /*<<< orphan*/  DREG_AT_IDLE1 ; 
 int /*<<< orphan*/  FFSM_CFG0 ; 
 int /*<<< orphan*/  FFSM_CFG1 ; 
 int /*<<< orphan*/  FFSM_DBA0 ; 
 int /*<<< orphan*/  FFSM_DBA1 ; 
 int /*<<< orphan*/  FFSM_IDLE_HEAD_BC0 ; 
 int /*<<< orphan*/  FFSM_IDLE_HEAD_BC1 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RFBI_CFG ; 
 int /*<<< orphan*/  SFSM_CBA0 ; 
 int /*<<< orphan*/  SFSM_CBA1 ; 
 int /*<<< orphan*/  SFSM_CFG0 ; 
 int /*<<< orphan*/  SFSM_CFG1 ; 
 int /*<<< orphan*/  SFSM_DBA0 ; 
 int /*<<< orphan*/  SFSM_DBA1 ; 

__attribute__((used)) static inline void FUNC1(void)
{
    FUNC0(0x0F00,     DREG_AT_CTRL);
    FUNC0(0x3C00,     DREG_AR_CTRL);
    FUNC0(0x0,        DREG_AT_IDLE0);
    FUNC0(0x0,        DREG_AT_IDLE1);
    FUNC0(0x0,        DREG_AR_IDLE0);
    FUNC0(0x0,        DREG_AR_IDLE1);
    FUNC0(0x0,        RFBI_CFG);
    FUNC0(0x1600,     SFSM_DBA0);
    FUNC0(0x1721,     SFSM_DBA1);
    FUNC0(0x1842,     SFSM_CBA0);
    FUNC0(0x1853,     SFSM_CBA1);
    FUNC0(0x14011,    SFSM_CFG0);
    FUNC0(0x14011,    SFSM_CFG1);
    FUNC0(0x1864,     FFSM_DBA0);
    FUNC0(0x1930,     FFSM_DBA1);
    FUNC0(0x3000C,    FFSM_CFG0);
    FUNC0(0x3000C,    FFSM_CFG1);
    FUNC0(0xF0D10000, FFSM_IDLE_HEAD_BC0);
    FUNC0(0xF0D10000, FFSM_IDLE_HEAD_BC1);
}