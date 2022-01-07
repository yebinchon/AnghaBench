
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct floppy_raw_cmd {struct floppy_raw_cmd* next; scalar_t__ buffer_length; scalar_t__ kernel_data; } ;


 int fd_dma_mem_free (unsigned long,scalar_t__) ;
 int kfree (struct floppy_raw_cmd*) ;

__attribute__((used)) static void raw_cmd_free(struct floppy_raw_cmd **ptr)
{
 struct floppy_raw_cmd *next;
 struct floppy_raw_cmd *this;

 this = *ptr;
 *ptr = ((void*)0);
 while (this) {
  if (this->buffer_length) {
   fd_dma_mem_free((unsigned long)this->kernel_data,
     this->buffer_length);
   this->buffer_length = 0;
  }
  next = this->next;
  kfree(this);
  this = next;
 }
}
