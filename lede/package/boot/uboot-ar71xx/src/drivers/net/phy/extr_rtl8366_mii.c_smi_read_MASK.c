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
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(uint32_t reg, uint32_t *data)
{
    uint32_t rawData;

    /* send start condition */
    FUNC1();
    /* send CTRL1 code: 0b1010*/
    FUNC4(0x0a, 4);
    /* send CTRL2 code: 0b100 */
    FUNC4(0x04, 3);
    /* send READ command */
    FUNC4(0x01, 1);

    /* wait for ACK */
    if (FUNC3())
        return -1;

    /* send address low */
    FUNC4(reg & 0xFF, 8);
    /* wait for ACK */
    if (FUNC3())
        return -1;
    /* send address high */
    FUNC4((reg & 0xFF00) >> 8, 8);
    /* wait for ACK */
    if (FUNC3())
        return -1;

    /* read data low */
    rawData = (FUNC0(8) & 0xFF);
    /* send ACK */
    FUNC4(0, 1);
    /* read data high */
    rawData |= (FUNC0(8) & 0xFF) << 8;
    /* send NACK */
    FUNC4(1, 1);

    /* send stop condition */
    FUNC2();

    if (data)
        *data = rawData;

    return 0;
}