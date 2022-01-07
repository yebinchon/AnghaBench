
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IOTYPE ;


 scalar_t__ PORT (int) ;

__attribute__((used)) static inline void serial_out(int offset, int value)
{
 *((volatile IOTYPE *)PORT(offset)) = value & 0xFF;
}
