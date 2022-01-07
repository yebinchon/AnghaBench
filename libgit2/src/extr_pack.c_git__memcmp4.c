
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (void const*,void const*,int) ;

__attribute__((used)) static int git__memcmp4(const void *a, const void *b) {
 return memcmp(a, b, 4);
}
