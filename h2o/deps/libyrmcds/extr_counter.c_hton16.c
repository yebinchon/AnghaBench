
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int n ;


 int htobe16 (int ) ;
 int memcpy (char*,int *,int) ;

__attribute__((used)) static inline void hton16(uint16_t i, char* p) {
    uint16_t n = htobe16(i);
    memcpy(p, &n, sizeof(n));
}
