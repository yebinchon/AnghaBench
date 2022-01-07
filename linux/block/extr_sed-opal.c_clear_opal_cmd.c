
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_header {int dummy; } ;
struct opal_dev {int pos; int cmd; } ;


 int IO_BUFFER_LENGTH ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void clear_opal_cmd(struct opal_dev *dev)
{
 dev->pos = sizeof(struct opal_header);
 memset(dev->cmd, 0, IO_BUFFER_LENGTH);
}
