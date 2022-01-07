
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt32 ;


 unsigned char read_byte (int ,unsigned char**,int *) ;

__attribute__((used)) static __inline__ unsigned char get_byte(void)
{
 unsigned char *buffer;
 UInt32 fake;

 return read_byte(0, &buffer, &fake), *buffer;
}
