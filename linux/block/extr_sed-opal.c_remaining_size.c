
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_dev {size_t pos; } ;


 size_t IO_BUFFER_LENGTH ;

__attribute__((used)) static size_t remaining_size(struct opal_dev *cmd)
{
 return IO_BUFFER_LENGTH - cmd->pos;
}
