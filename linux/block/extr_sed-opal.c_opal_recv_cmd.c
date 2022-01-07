
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_dev {int (* send_recv ) (int ,int ,int ,int ,int ,int) ;int resp; int comid; int data; } ;


 int IO_BUFFER_LENGTH ;
 int TCG_SECP_01 ;
 int stub1 (int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static int opal_recv_cmd(struct opal_dev *dev)
{
 return dev->send_recv(dev->data, dev->comid, TCG_SECP_01,
         dev->resp, IO_BUFFER_LENGTH,
         0);
}
