
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;
struct lanai_buffer {int dmaaddr; int * start; int * end; int * ptr; } ;


 int APRINTK (int,char*,unsigned long) ;
 int GFP_KERNEL ;
 size_t LANAI_PAGE_SIZE ;
 int * dma_alloc_coherent (int *,int,int*,int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void lanai_buf_allocate(struct lanai_buffer *buf,
 size_t bytes, size_t minbytes, struct pci_dev *pci)
{
 int size;

 if (bytes > (128 * 1024))
  bytes = 128 * 1024;
 for (size = LANAI_PAGE_SIZE; size < bytes; size *= 2)
  ;
 if (minbytes < LANAI_PAGE_SIZE)
  minbytes = LANAI_PAGE_SIZE;
 do {





  buf->start = dma_alloc_coherent(&pci->dev,
      size, &buf->dmaaddr, GFP_KERNEL);
  if (buf->start != ((void*)0)) {

   APRINTK((buf->dmaaddr & ~0xFFFFFF00) == 0,
       "bad dmaaddr: 0x%lx\n",
       (unsigned long) buf->dmaaddr);
   buf->ptr = buf->start;
   buf->end = (u32 *)
       (&((unsigned char *) buf->start)[size]);
   memset(buf->start, 0, size);
   break;
  }
  size /= 2;
 } while (size >= minbytes);
}
