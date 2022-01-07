
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct lanai_buffer {int * ptr; int * end; int * start; int dmaaddr; } ;


 int dma_free_coherent (int *,int ,int *,int ) ;
 int lanai_buf_size (struct lanai_buffer*) ;

__attribute__((used)) static void lanai_buf_deallocate(struct lanai_buffer *buf,
 struct pci_dev *pci)
{
 if (buf->start != ((void*)0)) {
  dma_free_coherent(&pci->dev, lanai_buf_size(buf),
      buf->start, buf->dmaaddr);
  buf->start = buf->end = buf->ptr = ((void*)0);
 }
}
