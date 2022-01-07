
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 int DISPLAYRESULT (char*,int const) ;

__attribute__((used)) static void BMK_display_BigEndian(const void* ptr, size_t length)
{
    const BYTE* p = (const BYTE*)ptr;
    size_t idx;
    for (idx=0; idx<length; idx++)
        DISPLAYRESULT("%02x", p[idx]);
}
