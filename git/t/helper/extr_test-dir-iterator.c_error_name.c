
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *error_name(int error_number)
{
 switch (error_number) {
 case 129: return "ENOENT";
 case 128: return "ENOTDIR";
 default: return "ESOMETHINGELSE";
 }
}
