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
struct s3c2416_data {int /*<<< orphan*/  armdiv; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,int) ; 

__attribute__((used)) static int FUNC3(struct s3c2416_data *s3c_freq,
				      unsigned int freq)
{
	int ret;

	if (FUNC0(s3c_freq->armdiv) / 1000 != freq) {
		ret = FUNC1(s3c_freq->armdiv, freq * 1000);
		if (ret < 0) {
			FUNC2("cpufreq: Failed to set armdiv rate %dkHz: %d\n",
			       freq, ret);
			return ret;
		}
	}

	return 0;
}