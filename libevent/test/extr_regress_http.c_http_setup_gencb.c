
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp {int dummy; } ;
typedef struct evhttp event_base ;
typedef int ev_uint16_t ;


 int HTTP_BIND_SSL ;
 struct evhttp* evhttp_new (struct evhttp*) ;
 int evhttp_set_bevcb (struct evhttp*,int ,int *) ;
 int evhttp_set_cb (struct evhttp*,char*,int ,struct evhttp*) ;
 int evhttp_set_ext_method_cmp (struct evhttp*,int ) ;
 int evhttp_set_gencb (struct evhttp*,void (*) (struct evhttp_request*,void*),void*) ;
 int ext_method_cb ;
 int http_badreq_cb ;
 int http_basic_cb ;
 scalar_t__ http_bind (struct evhttp*,int *,int) ;
 int http_chunked_cb ;
 int http_custom_cb ;
 int http_delay_cb ;
 int http_dispatcher_cb ;
 int http_genmethod_cb ;
 int http_large_cb ;
 int http_large_delay_cb ;
 int http_on_complete_cb ;
 int http_post_cb ;
 int http_put_cb ;
 int http_timeout_cb ;
 int https_bev ;
 int init_ssl () ;

__attribute__((used)) static struct evhttp *
http_setup_gencb(ev_uint16_t *pport, struct event_base *base, int mask,
 void (*cb)(struct evhttp_request *, void *), void *cbarg)
{
 struct evhttp *myhttp;


 myhttp = evhttp_new(base);

 if (http_bind(myhttp, pport, mask) < 0)
  return ((void*)0);







 evhttp_set_gencb(myhttp, cb, cbarg);


 evhttp_set_ext_method_cmp(myhttp, ext_method_cb);


 evhttp_set_cb(myhttp, "/test", http_basic_cb, myhttp);
 evhttp_set_cb(myhttp, "/test nonconformant", http_basic_cb, myhttp);
 evhttp_set_cb(myhttp, "/timeout", http_timeout_cb, myhttp);
 evhttp_set_cb(myhttp, "/large", http_large_cb, base);
 evhttp_set_cb(myhttp, "/chunked", http_chunked_cb, base);
 evhttp_set_cb(myhttp, "/streamed", http_chunked_cb, base);
 evhttp_set_cb(myhttp, "/postit", http_post_cb, base);
 evhttp_set_cb(myhttp, "/putit", http_put_cb, base);
 evhttp_set_cb(myhttp, "/deleteit", http_genmethod_cb, base);
 evhttp_set_cb(myhttp, "/propfind", http_genmethod_cb, base);
 evhttp_set_cb(myhttp, "/proppatch", http_genmethod_cb, base);
 evhttp_set_cb(myhttp, "/mkcol", http_genmethod_cb, base);
 evhttp_set_cb(myhttp, "/lockit", http_genmethod_cb, base);
 evhttp_set_cb(myhttp, "/unlockit", http_genmethod_cb, base);
 evhttp_set_cb(myhttp, "/copyit", http_genmethod_cb, base);
 evhttp_set_cb(myhttp, "/moveit", http_genmethod_cb, base);
 evhttp_set_cb(myhttp, "/custom", http_custom_cb, base);
 evhttp_set_cb(myhttp, "/delay", http_delay_cb, base);
 evhttp_set_cb(myhttp, "/largedelay", http_large_delay_cb, base);
 evhttp_set_cb(myhttp, "/badrequest", http_badreq_cb, base);
 evhttp_set_cb(myhttp, "/oncomplete", http_on_complete_cb, base);
 evhttp_set_cb(myhttp, "/", http_dispatcher_cb, base);
 return (myhttp);
}
