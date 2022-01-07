
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int icu2_read (int ) ;
 int icu2_write (int ,int ) ;

__attribute__((used)) static inline uint16_t icu2_clear(uint8_t offset, uint16_t clear)
{
 uint16_t data;

 data = icu2_read(offset);
 data &= ~clear;
 icu2_write(offset, data);

 return data;
}
