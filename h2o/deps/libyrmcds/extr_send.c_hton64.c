
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int n ;


 int htobe64 (int ) ;
 int memcpy (char*,int *,int) ;

__attribute__((used)) static inline void hton64(uint64_t i, char* p) {
    uint64_t n = htobe64(i);
    memcpy(p, &n, sizeof(n));
}
