
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;


 int dos_crc (unsigned char*,int,int,int) ;

__attribute__((used)) static inline ushort dos_data_crc(unsigned char *data)
{
 return dos_crc(data, 0xe2, 0x95 ,511);
}
