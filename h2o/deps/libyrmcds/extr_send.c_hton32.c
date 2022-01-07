
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int n ;


 int htobe32 (int ) ;
 int memcpy (char*,int *,int) ;

__attribute__((used)) static inline void hton32(uint32_t i, char* p) {
    uint32_t n = htobe32(i);
    memcpy(p, &n, sizeof(n));
}
