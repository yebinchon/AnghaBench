
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef enum e820_type { ____Placeholder_e820_type } e820_type ;


 int _e820__mapped_any (int ,int ,int ,int) ;
 int e820_table_firmware ;

bool e820__mapped_raw_any(u64 start, u64 end, enum e820_type type)
{
 return _e820__mapped_any(e820_table_firmware, start, end, type);
}
