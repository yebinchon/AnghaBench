
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dummy; } ;


 int cm4040_reader_release (struct pcmcia_device*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void reader_release(struct pcmcia_device *link)
{
 cm4040_reader_release(link);
 pcmcia_disable_device(link);
}
