
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apei_resources {int ioport; int iomem; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static inline void apei_resources_init(struct apei_resources *resources)
{
 INIT_LIST_HEAD(&resources->iomem);
 INIT_LIST_HEAD(&resources->ioport);
}
