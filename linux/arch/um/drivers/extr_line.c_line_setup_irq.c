
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_driver {int write_irq_name; int write_irq; int read_irq_name; int read_irq; } ;
struct line {struct line_driver* driver; } ;


 int IRQF_SHARED ;
 int IRQ_READ ;
 int IRQ_WRITE ;
 int line_interrupt ;
 int line_write_interrupt ;
 int um_request_irq (int ,int,int ,int ,int ,int ,void*) ;

int line_setup_irq(int fd, int input, int output, struct line *line, void *data)
{
 const struct line_driver *driver = line->driver;
 int err = 0;

 if (input)
  err = um_request_irq(driver->read_irq, fd, IRQ_READ,
         line_interrupt, IRQF_SHARED,
         driver->read_irq_name, data);
 if (err)
  return err;
 if (output)
  err = um_request_irq(driver->write_irq, fd, IRQ_WRITE,
         line_write_interrupt, IRQF_SHARED,
         driver->write_irq_name, data);
 return err;
}
