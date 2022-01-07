
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PACK_BOOKMARK (long long,int,int,int) ;
 int UNPACK_BOOKMARK (long long,int,int,int) ;
 int assert (int) ;

void test (int a, int b, int c) {
 int _a, _b, _c;
 long long x;
 PACK_BOOKMARK(x,a,b,c);
 UNPACK_BOOKMARK(x,_a,_b,_c);
 assert (a == _a && b == _b && c == _c);
}
