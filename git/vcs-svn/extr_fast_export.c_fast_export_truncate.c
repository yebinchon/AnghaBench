
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int fast_export_modify (char const*,int ,char*) ;
 int printf (char*) ;

__attribute__((used)) static void fast_export_truncate(const char *path, uint32_t mode)
{
 fast_export_modify(path, mode, "inline");
 printf("data 0\n\n");
}
