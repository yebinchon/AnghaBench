
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TESTMGR_POISON_BYTE ;
 int memset (void*,int ,size_t) ;

__attribute__((used)) static inline void testmgr_poison(void *addr, size_t len)
{
 memset(addr, TESTMGR_POISON_BYTE, len);
}
