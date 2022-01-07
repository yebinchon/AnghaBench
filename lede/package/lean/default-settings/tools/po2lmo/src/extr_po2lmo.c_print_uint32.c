
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int FILE ;


 int htonl (int ) ;
 int print (int *,int,int,int *) ;

__attribute__((used)) static void print_uint32(uint32_t x, FILE *out)
{
 uint32_t y = htonl(x);
 print(&y, sizeof(uint32_t), 1, out);
}
