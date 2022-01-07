
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct revectored_struct {int __map; } ;


 int test_bit (int,int ) ;

__attribute__((used)) static inline int is_revectored(int nr, struct revectored_struct *bitmap)
{
 return test_bit(nr, bitmap->__map);
}
