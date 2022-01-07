
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline const char *msk2str(unsigned int mask)
{
 switch (mask) {
 case 134: return "4kb";
 case 143: return "16kb";
 case 131: return "64kb";
 case 139: return "256kb";
 case 140: return "1Mb";
 case 133: return "4Mb";
 case 142: return "16Mb";
 case 130: return "64Mb";
 case 138: return "256Mb";
 case 141: return "1Gb";

 }
 return "";
}
