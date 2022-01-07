
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * start; } ;
struct lanai_dev {TYPE_1__ aal0buf; int pci; } ;


 int AAL0_RX_BUFFER_SIZE ;
 int DPRINTK (char*) ;
 int ENOMEM ;
 int lanai_buf_allocate (TYPE_1__*,int ,int,int ) ;

__attribute__((used)) static inline int aal0_buffer_allocate(struct lanai_dev *lanai)
{
 DPRINTK("aal0_buffer_allocate: allocating AAL0 RX buffer\n");
 lanai_buf_allocate(&lanai->aal0buf, AAL0_RX_BUFFER_SIZE, 80,
      lanai->pci);
 return (lanai->aal0buf.start == ((void*)0)) ? -ENOMEM : 0;
}
