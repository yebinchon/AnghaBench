#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timespec64 {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {scalar_t__ revision; } ;
struct TYPE_4__ {scalar_t__ century; TYPE_1__ header; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ CMOS_YEARS_OFFS ; 
 scalar_t__ FADT2_REVISION_ID ; 
 scalar_t__ RTC_ALWAYS_BCD ; 
 scalar_t__ RTC_CONTROL ; 
 scalar_t__ RTC_DAY_OF_MONTH ; 
 unsigned int RTC_DM_BINARY ; 
 scalar_t__ RTC_FREQ_SELECT ; 
 scalar_t__ RTC_HOURS ; 
 scalar_t__ RTC_MINUTES ; 
 scalar_t__ RTC_MONTH ; 
 scalar_t__ RTC_SECONDS ; 
 int RTC_UIP ; 
 scalar_t__ RTC_YEAR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__ acpi_gbl_FADT ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC8(struct timespec64 *now)
{
	unsigned int status, year, mon, day, hour, min, sec, century = 0;
	unsigned long flags;

	/*
	 * If pm_trace abused the RTC as storage, set the timespec to 0,
	 * which tells the caller that this RTC value is unusable.
	 */
	if (!FUNC5()) {
		now->tv_sec = now->tv_nsec = 0;
		return;
	}

	FUNC6(&rtc_lock, flags);

	/*
	 * If UIP is clear, then we have >= 244 microseconds before
	 * RTC registers will be updated.  Spec sheet says that this
	 * is the reliable way to read RTC - registers. If UIP is set
	 * then the register access might be invalid.
	 */
	while ((FUNC0(RTC_FREQ_SELECT) & RTC_UIP))
		FUNC3();

	sec = FUNC0(RTC_SECONDS);
	min = FUNC0(RTC_MINUTES);
	hour = FUNC0(RTC_HOURS);
	day = FUNC0(RTC_DAY_OF_MONTH);
	mon = FUNC0(RTC_MONTH);
	year = FUNC0(RTC_YEAR);

#ifdef CONFIG_ACPI
	if (acpi_gbl_FADT.header.revision >= FADT2_REVISION_ID &&
	    acpi_gbl_FADT.century)
		century = CMOS_READ(acpi_gbl_FADT.century);
#endif

	status = FUNC0(RTC_CONTROL);
	FUNC1(RTC_ALWAYS_BCD && (status & RTC_DM_BINARY));

	FUNC7(&rtc_lock, flags);

	if (RTC_ALWAYS_BCD || !(status & RTC_DM_BINARY)) {
		sec = FUNC2(sec);
		min = FUNC2(min);
		hour = FUNC2(hour);
		day = FUNC2(day);
		mon = FUNC2(mon);
		year = FUNC2(year);
	}

	if (century) {
		century = FUNC2(century);
		year += century * 100;
	} else
		year += CMOS_YEARS_OFFS;

	now->tv_sec = FUNC4(year, mon, day, hour, min, sec);
	now->tv_nsec = 0;
}