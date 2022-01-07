
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* data; } ;
struct mc_request {TYPE_1__ request; } ;
struct mc_device {char* name; int (* config ) (char*,char**) ;int get_config; } ;


 struct mc_device* mconsole_find_dev (char*) ;
 int mconsole_get_config (int ,struct mc_request*,char*) ;
 int mconsole_reply (struct mc_request*,char*,int,int ) ;
 char* skip_spaces (char*) ;
 size_t strlen (char*) ;
 int stub1 (char*,char**) ;

void mconsole_config(struct mc_request *req)
{
 struct mc_device *dev;
 char *ptr = req->request.data, *name, *error_string = "";
 int err;

 ptr += strlen("config");
 ptr = skip_spaces(ptr);
 dev = mconsole_find_dev(ptr);
 if (dev == ((void*)0)) {
  mconsole_reply(req, "Bad configuration option", 1, 0);
  return;
 }

 name = &ptr[strlen(dev->name)];
 ptr = name;
 while ((*ptr != '=') && (*ptr != '\0'))
  ptr++;

 if (*ptr == '=') {
  err = (*dev->config)(name, &error_string);
  mconsole_reply(req, error_string, err, 0);
 }
 else mconsole_get_config(dev->get_config, req, name);
}
