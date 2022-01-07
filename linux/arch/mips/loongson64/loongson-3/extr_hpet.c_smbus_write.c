
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SMBUS_CFG_BASE ;

__attribute__((used)) static void smbus_write(int offset, int data)
{
 *(volatile unsigned int *)(SMBUS_CFG_BASE + offset) = data;
}
