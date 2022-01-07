
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ead_msg_number {int data; } ;
struct TYPE_5__ {int len; int data; } ;
struct TYPE_4__ {int len; } ;


 TYPE_3__ B ;
 struct ead_msg_number* EAD_DATA (TYPE_1__*,int ) ;
 int bbuf ;
 int memcpy (int ,int ,int) ;
 TYPE_1__* msg ;
 int ntohl (int ) ;
 int number ;

__attribute__((used)) static bool
handle_b(void)
{
 struct ead_msg_number *num = EAD_DATA(msg, number);
 int len = ntohl(msg->len) - sizeof(struct ead_msg_number);

 B.data = bbuf;
 B.len = len;
 memcpy(bbuf, num->data, len);
 return 1;
}
