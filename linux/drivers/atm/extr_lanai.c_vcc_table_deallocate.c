
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lanai_dev {scalar_t__ vccs; } ;


 int free_page (unsigned long) ;
 int vfree (scalar_t__) ;

__attribute__((used)) static inline void vcc_table_deallocate(const struct lanai_dev *lanai)
{



 vfree(lanai->vccs);

}
