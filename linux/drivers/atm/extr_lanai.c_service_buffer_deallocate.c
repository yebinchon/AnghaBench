
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lanai_dev {int pci; int service; } ;


 int lanai_buf_deallocate (int *,int ) ;

__attribute__((used)) static inline void service_buffer_deallocate(struct lanai_dev *lanai)
{
 lanai_buf_deallocate(&lanai->service, lanai->pci);
}
