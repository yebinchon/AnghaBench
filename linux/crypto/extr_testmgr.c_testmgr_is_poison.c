
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TESTMGR_POISON_BYTE ;
 int * memchr_inv (void const*,int ,size_t) ;

__attribute__((used)) static inline bool testmgr_is_poison(const void *addr, size_t len)
{
 return memchr_inv(addr, TESTMGR_POISON_BYTE, len) == ((void*)0);
}
