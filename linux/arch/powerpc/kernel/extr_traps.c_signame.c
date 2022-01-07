
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *signame(int signr)
{
 switch (signr) {
 case 132: return "bus error";
 case 131: return "floating point exception";
 case 130: return "illegal instruction";
 case 129: return "segfault";
 case 128: return "unhandled trap";
 }

 return "unknown signal";
}
