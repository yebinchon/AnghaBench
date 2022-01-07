
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct helper_data {int out; } ;


 int recvline_fh (int ,struct strbuf*) ;

__attribute__((used)) static int recvline(struct helper_data *helper, struct strbuf *buffer)
{
 return recvline_fh(helper->out, buffer);
}
