
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_ext_method {char* method; scalar_t__ type; scalar_t__ flags; } ;


 scalar_t__ EVHTTP_REQ_CUSTOM ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int ext_method_cb(struct evhttp_ext_method *p)
{
 if (p == ((void*)0))
  return -1;
 if (p->method) {
  if (strcmp(p->method, "CUSTOM") == 0) {
   p->type = EVHTTP_REQ_CUSTOM;
   p->flags = 0;
   return 0;
  }
 } else {
  if (p->type == EVHTTP_REQ_CUSTOM) {
   p->method = "CUSTOM";
   return 0;
  }
 }
 return -1;
}
