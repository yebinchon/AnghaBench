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
typedef  int uint64_t ;
typedef  size_t uint32_t ;
struct rdr_tbl_ent {size_t width; size_t num_words; } ;

/* Variables and functions */
 scalar_t__ ONYX_INTF ; 
 scalar_t__ perf_processor_interface ; 
 struct rdr_tbl_ent* FUNC0 (size_t) ; 
 int FUNC1 (size_t,size_t) ; 
 int FUNC2 (size_t,size_t) ; 

__attribute__((used)) static int FUNC3(uint32_t	rdr_num, uint64_t *buffer)
{
	uint64_t	data, data_mask = 0;
	uint32_t	width, xbits, i;
	const struct rdr_tbl_ent *tentry;

	tentry = FUNC0(rdr_num);
	if ((width = tentry->width) == 0)
		return 0;

	/* Clear out buffer */
	i = tentry->num_words;
	while (i--) {
		buffer[i] = 0;
	}

	/* Check for bits an even number of 64 */
	if ((xbits = width & 0x03f) != 0) {
		data_mask = 1;
		data_mask <<= (64 - xbits);
		data_mask--;
	}

	/* Grab all of the data */
	i = tentry->num_words;
	while (i--) {

		if (perf_processor_interface == ONYX_INTF) {
			data = FUNC1(rdr_num, width);
		} else {
			data = FUNC2(rdr_num, width);
		}
		if (xbits) {
			buffer[i] |= (data << (64 - xbits));
			if (i) {
				buffer[i-1] |= ((data >> xbits) & data_mask);
			}
		} else {
			buffer[i] = data;
		}
	}

	return 1;
}