
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int n ;


 int be64toh (int ) ;
 int memcpy (int *,char const*,int) ;

__attribute__((used)) static inline uint64_t ntoh64(const char* p) {
    uint64_t n;
    memcpy(&n, p, sizeof(n));
    return be64toh(n);
}
