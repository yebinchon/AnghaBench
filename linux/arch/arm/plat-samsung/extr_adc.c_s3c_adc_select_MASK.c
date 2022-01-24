#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct s3c_adc_client {int channel; int /*<<< orphan*/  is_ts; int /*<<< orphan*/  (* select_cb ) (struct s3c_adc_client*,int) ;} ;
struct adc_device {scalar_t__ regs; int /*<<< orphan*/  pdev; } ;
typedef  enum s3c_cpu_type { ____Placeholder_s3c_cpu_type } s3c_cpu_type ;
struct TYPE_2__ {int driver_data; } ;

/* Variables and functions */
 scalar_t__ S3C2410_ADCCON ; 
 unsigned int S3C2410_ADCCON_MUXMASK ; 
 unsigned int FUNC0 (int) ; 
 unsigned int S3C2410_ADCCON_STARTMASK ; 
 unsigned int S3C2410_ADCCON_STDBM ; 
 scalar_t__ S3C2443_ADCMUX ; 
 scalar_t__ S5P_ADCMUX ; 
 int TYPE_ADCV1 ; 
 int TYPE_ADCV11 ; 
 int TYPE_ADCV12 ; 
 int TYPE_ADCV2 ; 
 int TYPE_ADCV3 ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct s3c_adc_client*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC5(struct adc_device *adc,
				  struct s3c_adc_client *client)
{
	unsigned con = FUNC2(adc->regs + S3C2410_ADCCON);
	enum s3c_cpu_type cpu = FUNC1(adc->pdev)->driver_data;

	client->select_cb(client, 1);

	if (cpu == TYPE_ADCV1 || cpu == TYPE_ADCV2)
		con &= ~S3C2410_ADCCON_MUXMASK;
	con &= ~S3C2410_ADCCON_STDBM;
	con &= ~S3C2410_ADCCON_STARTMASK;

	if (!client->is_ts) {
		if (cpu == TYPE_ADCV3)
			FUNC4(client->channel & 0xf, adc->regs + S5P_ADCMUX);
		else if (cpu == TYPE_ADCV11 || cpu == TYPE_ADCV12)
			FUNC4(client->channel & 0xf,
						adc->regs + S3C2443_ADCMUX);
		else
			con |= FUNC0(client->channel);
	}

	FUNC4(con, adc->regs + S3C2410_ADCCON);
}