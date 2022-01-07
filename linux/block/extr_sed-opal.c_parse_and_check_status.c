
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_dev {int parsed; int resp; int pos; int cmd; } ;


 int IO_BUFFER_LENGTH ;
 int pr_debug (char*) ;
 int print_buffer (int ,int ) ;
 int response_parse (int ,int ,int *) ;
 int response_status (int *) ;

__attribute__((used)) static int parse_and_check_status(struct opal_dev *dev)
{
 int error;

 print_buffer(dev->cmd, dev->pos);

 error = response_parse(dev->resp, IO_BUFFER_LENGTH, &dev->parsed);
 if (error) {
  pr_debug("Couldn't parse response.\n");
  return error;
 }

 return response_status(&dev->parsed);
}
