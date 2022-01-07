
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUINT32 ;


 int ikcp_decode32u (char const*,int *) ;

IUINT32 ikcp_getconv(const void *ptr)
{
 IUINT32 conv;
 ikcp_decode32u((const char*)ptr, &conv);
 return conv;
}
