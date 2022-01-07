
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int n ;


 int be32toh (int ) ;
 int memcpy (int *,char const*,int) ;

__attribute__((used)) static inline uint32_t ntoh32(const char* p) {
    uint32_t n;
    memcpy(&n, p, sizeof(n));
    return be32toh(n);
}
