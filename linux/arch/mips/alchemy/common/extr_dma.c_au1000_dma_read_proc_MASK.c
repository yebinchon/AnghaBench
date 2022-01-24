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
struct dma_chan {char* dev_str; } ;
typedef  int off_t ;

/* Variables and functions */
 int NUM_AU1000_DMA_CHANNELS ; 
 struct dma_chan* FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,char*,int,char*) ; 

int FUNC2(char *buf, char **start, off_t fpos,
			 int length, int *eof, void *data)
{
	int i, len = 0;
	struct dma_chan *chan;

	for (i = 0; i < NUM_AU1000_DMA_CHANNELS; i++) {
		chan = FUNC0(i);
		if (chan != NULL)
			len += FUNC1(buf + len, "%2d: %s\n",
				       i, chan->dev_str);
	}

	if (fpos >= len) {
		*start = buf;
		*eof = 1;
		return 0;
	}
	*start = buf + fpos;
	len -= fpos;
	if (len > length)
		return length;
	*eof = 1;
	return len;
}