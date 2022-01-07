
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static const char* dump_type_to_string(uint32_t type)
{
 switch (type) {
 case 0x01: return "SP Dump";
 case 0x02: return "System/Platform Dump";
 case 0x03: return "SMA Dump";
 default: return "unknown";
 }
}
