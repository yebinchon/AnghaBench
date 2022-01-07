
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IOTYPE ;


 scalar_t__ PORT (int) ;

__attribute__((used)) static inline unsigned int serial_in(int offset)
{
 return *((volatile IOTYPE *)PORT(offset)) & 0xFF;
}
