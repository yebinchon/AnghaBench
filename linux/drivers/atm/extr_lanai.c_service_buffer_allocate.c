
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dmaaddr; int * start; } ;
struct lanai_dev {TYPE_1__ service; int pci; } ;


 int DPRINTK (char*,int *,int ,int ) ;
 int ENOMEM ;
 int SERVICE_ENTRIES ;
 int SSTUFF_SET_ADDR (int ) ;
 int SSTUFF_SET_SIZE (int ) ;
 int ServWrite_Reg ;
 int ServiceStuff_Reg ;
 int lanai_buf_allocate (TYPE_1__*,int,int,int ) ;
 int lanai_buf_size (TYPE_1__*) ;
 int lanai_buf_size_cardorder (TYPE_1__*) ;
 int reg_write (struct lanai_dev*,int,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int service_buffer_allocate(struct lanai_dev *lanai)
{
 lanai_buf_allocate(&lanai->service, SERVICE_ENTRIES * 4, 8,
     lanai->pci);
 if (unlikely(lanai->service.start == ((void*)0)))
  return -ENOMEM;
 DPRINTK("allocated service buffer at %p, size %zu(%d)\n",
     lanai->service.start,
     lanai_buf_size(&lanai->service),
     lanai_buf_size_cardorder(&lanai->service));

 reg_write(lanai, 0, ServWrite_Reg);

 reg_write(lanai,
     SSTUFF_SET_SIZE(lanai_buf_size_cardorder(&lanai->service)) |
     SSTUFF_SET_ADDR(lanai->service.dmaaddr),
     ServiceStuff_Reg);
 return 0;
}
