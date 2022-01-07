
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *cop_to_str(int cop)
{
 switch (cop) {
 case 131: return "Fault";
 case 133: return "NX-842 Normal Priority";
 case 132: return "NX-842 High Priority";
 case 129: return "NX-GZIP Normal Priority";
 case 128: return "NX-GZIP High Priority";
 case 130: return "Fast Thread-wakeup";
 default: return "Unknown";
 }
}
