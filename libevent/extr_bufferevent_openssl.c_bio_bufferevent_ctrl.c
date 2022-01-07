
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;
typedef int BIO ;
 struct bufferevent* BIO_get_data (int *) ;
 long BIO_get_shutdown (int *) ;
 int BIO_set_shutdown (int *,int) ;
 int bufferevent_get_input (struct bufferevent*) ;
 int bufferevent_get_output (struct bufferevent*) ;
 int evbuffer_get_length (int ) ;

__attribute__((used)) static long
bio_bufferevent_ctrl(BIO *b, int cmd, long num, void *ptr)
{
 struct bufferevent *bufev = BIO_get_data(b);
 long ret = 1;

 switch (cmd) {
 case 131:
  ret = BIO_get_shutdown(b);
  break;
 case 129:
  BIO_set_shutdown(b, (int)num);
  break;
 case 130:
  ret = evbuffer_get_length(bufferevent_get_input(bufev)) != 0;
  break;
 case 128:
  ret = evbuffer_get_length(bufferevent_get_output(bufev)) != 0;
  break;


 case 133:
 case 132:
  ret = 1;
  break;
 default:
  ret = 0;
  break;
 }
 return ret;
}
