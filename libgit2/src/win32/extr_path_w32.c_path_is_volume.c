
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 scalar_t__ wcsncmp (int *,char*,int) ;

__attribute__((used)) static bool path_is_volume(wchar_t *target, size_t target_len)
{
 return (target_len && wcsncmp(target, L"\\??\\Volume{", 11) == 0);
}
