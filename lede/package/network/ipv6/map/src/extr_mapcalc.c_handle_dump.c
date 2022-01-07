
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubus_request {int dummy; } ;
struct blob_attr {int dummy; } ;


 int DUMP_ATTR_INTERFACE ;
 int DUMP_ATTR_MAX ;
 int blob_data (struct blob_attr*) ;
 int blob_len (struct blob_attr*) ;
 int blob_memdup (struct blob_attr*) ;
 int blobmsg_parse (int ,int ,struct blob_attr**,int ,int ) ;
 int dump ;
 int dump_attrs ;

__attribute__((used)) static void handle_dump(struct ubus_request *req __attribute__((unused)),
  int type __attribute__((unused)), struct blob_attr *msg)
{
 struct blob_attr *tb[DUMP_ATTR_INTERFACE];
 blobmsg_parse(dump_attrs, DUMP_ATTR_MAX, tb, blob_data(msg), blob_len(msg));

 if (!tb[DUMP_ATTR_INTERFACE])
  return;

 dump = blob_memdup(tb[DUMP_ATTR_INTERFACE]);
}
