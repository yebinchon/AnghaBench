
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_chan {int kernel_data; } ;


 int kfree (struct port_chan*) ;
 int port_kern_free (int ) ;

__attribute__((used)) static void port_free(void *d)
{
 struct port_chan *data = d;

 port_kern_free(data->kernel_data);
 kfree(data);
}
