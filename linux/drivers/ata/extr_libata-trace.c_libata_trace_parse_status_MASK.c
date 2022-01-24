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
struct trace_seq {int dummy; } ;

/* Variables and functions */
 unsigned char ATA_BUSY ; 
 unsigned char ATA_CORR ; 
 unsigned char ATA_DF ; 
 unsigned char ATA_DRDY ; 
 unsigned char ATA_DRQ ; 
 unsigned char ATA_DSC ; 
 unsigned char ATA_ERR ; 
 unsigned char ATA_SENSE ; 
 char* FUNC0 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char) ; 

const char *
FUNC3(struct trace_seq *p, unsigned char status)
{
	const char *ret = FUNC0(p);

	FUNC1(p, "{ ");
	if (status & ATA_BUSY)
		FUNC1(p, "BUSY ");
	if (status & ATA_DRDY)
		FUNC1(p, "DRDY ");
	if (status & ATA_DF)
		FUNC1(p, "DF ");
	if (status & ATA_DSC)
		FUNC1(p, "DSC ");
	if (status & ATA_DRQ)
		FUNC1(p, "DRQ ");
	if (status & ATA_CORR)
		FUNC1(p, "CORR ");
	if (status & ATA_SENSE)
		FUNC1(p, "SENSE ");
	if (status & ATA_ERR)
		FUNC1(p, "ERR ");
	FUNC2(p, '}');
	FUNC2(p, 0);

	return ret;
}