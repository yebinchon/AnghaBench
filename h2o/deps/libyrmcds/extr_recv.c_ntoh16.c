
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int n ;


 int be16toh (int ) ;
 int memcpy (int *,char const*,int) ;

__attribute__((used)) static inline uint16_t ntoh16(const char* p) {
    uint16_t n;
    memcpy(&n, p, sizeof(n));
    return be16toh(n);
}
