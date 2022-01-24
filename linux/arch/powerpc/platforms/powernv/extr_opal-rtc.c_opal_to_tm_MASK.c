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
typedef  int u64 ;
typedef  int u32 ;
struct rtc_time {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; int tm_wday; } ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(u32 y_m_d, u64 h_m_s_ms, struct rtc_time *tm)
{
	tm->tm_year	= ((FUNC0(y_m_d >> 24) * 100) +
			   FUNC0((y_m_d >> 16) & 0xff)) - 1900;
	tm->tm_mon	= FUNC0((y_m_d >> 8) & 0xff) - 1;
	tm->tm_mday	= FUNC0(y_m_d & 0xff);
	tm->tm_hour	= FUNC0((h_m_s_ms >> 56) & 0xff);
	tm->tm_min	= FUNC0((h_m_s_ms >> 48) & 0xff);
	tm->tm_sec	= FUNC0((h_m_s_ms >> 40) & 0xff);
	tm->tm_wday     = -1;
}