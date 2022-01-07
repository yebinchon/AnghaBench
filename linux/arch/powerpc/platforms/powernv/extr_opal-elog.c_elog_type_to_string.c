
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static const char *elog_type_to_string(uint64_t type)
{
 switch (type) {
 case 0: return "PEL";
 default: return "unknown";
 }
}
