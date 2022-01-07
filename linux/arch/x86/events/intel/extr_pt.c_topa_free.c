
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct topa {int dummy; } ;


 int free_page (unsigned long) ;

__attribute__((used)) static void topa_free(struct topa *topa)
{
 free_page((unsigned long)topa);
}
