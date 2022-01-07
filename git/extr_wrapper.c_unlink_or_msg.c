
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 scalar_t__ ENOENT ;
 int assert (struct strbuf*) ;
 scalar_t__ errno ;
 int strbuf_addf (struct strbuf*,char*,char const*,int ) ;
 int strerror (scalar_t__) ;
 int unlink (char const*) ;

int unlink_or_msg(const char *file, struct strbuf *err)
{
 int rc = unlink(file);

 assert(err);

 if (!rc || errno == ENOENT)
  return 0;

 strbuf_addf(err, "unable to unlink '%s': %s",
      file, strerror(errno));
 return -1;
}
