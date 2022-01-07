
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc_request {int dummy; } ;


 int mconsole_reply_len (struct mc_request*,char const*,int ,int,int) ;
 int strlen (char const*) ;

int mconsole_reply(struct mc_request *req, const char *str, int err, int more)
{
 return mconsole_reply_len(req, str, strlen(str), err, more);
}
