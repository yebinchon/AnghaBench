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
 int DISP_LINE_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned long,char*) ; 

__attribute__((used)) static int FUNC2(unsigned int addr, unsigned int length)
{
	unsigned long	i, nbytes, linebytes;
	char	*cp;
//	unsigned int 	*uip;
//	unsigned short 	*usp;
	unsigned char 	*ucp;
	char linebuf[DISP_LINE_LEN];

//	nbytes = length * size;
	nbytes = length;
   	do
   	{
//   		uip = (unsigned int *)linebuf;
//   		usp = (unsigned short *)linebuf;
		ucp = (unsigned char *)linebuf;
		
		FUNC0("%08x:", addr);
		linebytes = (nbytes > DISP_LINE_LEN)?DISP_LINE_LEN:nbytes;
                if((addr & 0xF0000000) == 0x20000000) {
			for(i = 0; i < linebytes; i ++) {
				linebuf[i] =  *(char *)(addr+i);
			}
		} else {
			FUNC1(addr, linebytes, linebuf);
		}
		for (i=0; i<linebytes; i++)
		{
/*			if (size == 4) 
				printf(" %08x", *uip++);
			else if (size == 2)
				printf(" %04x", *usp++);
			else
*/
				FUNC0(" %02x", *ucp++);
//			addr += size;
			addr++;
		}
		FUNC0("    ");
		cp = linebuf;
		for (i=0; i<linebytes; i++) {
			if ((*cp < 0x20) || (*cp > 0x7e))
				FUNC0(".");
			else
				FUNC0("%c", *cp);
			cp++;
		}
		FUNC0("\n");
		nbytes -= linebytes;
	} while (nbytes > 0);
	return 0;
}