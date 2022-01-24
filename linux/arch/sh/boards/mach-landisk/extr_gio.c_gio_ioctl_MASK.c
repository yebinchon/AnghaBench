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
struct file {int dummy; } ;

/* Variables and functions */
 long EFAULT ; 
#define  GIODRV_IOCGGIODATA1 134 
#define  GIODRV_IOCGGIODATA2 133 
#define  GIODRV_IOCGGIODATA4 132 
#define  GIODRV_IOCSGIODATA1 131 
#define  GIODRV_IOCSGIODATA2 130 
#define  GIODRV_IOCSGIODATA4 129 
#define  GIODRV_IOCSGIOSETADDR 128 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned short,unsigned int) ; 
 scalar_t__ FUNC6 (unsigned int*,int*,int) ; 
 scalar_t__ FUNC7 (int*,unsigned int*,int) ; 

__attribute__((used)) static long FUNC8(struct file *filp, unsigned int cmd, unsigned long arg)
{
	unsigned int data;
	static unsigned int addr = 0;

	if (cmd & 0x01) {	/* write */
		if (FUNC6(&data, (int *)arg, sizeof(int))) {
			return -EFAULT;
		}
	}

	switch (cmd) {
	case GIODRV_IOCSGIOSETADDR:	/* address set */
		addr = data;
		break;

	case GIODRV_IOCSGIODATA1:	/* write byte */
		FUNC3((unsigned char)(0x0ff & data), addr);
		break;

	case GIODRV_IOCSGIODATA2:	/* write word */
		if (addr & 0x01) {
			return -EFAULT;
		}
		FUNC5((unsigned short int)(0x0ffff & data), addr);
		break;

	case GIODRV_IOCSGIODATA4:	/* write long */
		if (addr & 0x03) {
			return -EFAULT;
		}
		FUNC4(data, addr);
		break;

	case GIODRV_IOCGGIODATA1:	/* read byte */
		data = FUNC0(addr);
		break;

	case GIODRV_IOCGGIODATA2:	/* read word */
		if (addr & 0x01) {
			return -EFAULT;
		}
		data = FUNC2(addr);
		break;

	case GIODRV_IOCGGIODATA4:	/* read long */
		if (addr & 0x03) {
			return -EFAULT;
		}
		data = FUNC1(addr);
		break;
	default:
		return -EFAULT;
		break;
	}

	if ((cmd & 0x01) == 0) {	/* read */
		if (FUNC7((int *)arg, &data, sizeof(int))) {
			return -EFAULT;
		}
	}
	return 0;
}