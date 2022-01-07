
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_iterator_type_t ;
__attribute__((used)) static const char *diff_mnemonic_prefix(
 git_iterator_type_t type, bool left_side)
{
 const char *pfx = "";

 switch (type) {
 case 132: pfx = "c"; break;
 case 129: pfx = "c"; break;
 case 130: pfx = "i"; break;
 case 128: pfx = "w"; break;
 case 131: pfx = left_side ? "1" : "2"; break;
 default: break;
 }





 return pfx;
}
