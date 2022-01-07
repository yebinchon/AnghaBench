
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdline_parts {struct cmdline_parts* next_parts; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cmdline_parts_free (struct cmdline_parts**) ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 int parse_parts (struct cmdline_parts**,char*) ;
 int pr_warn (char*) ;
 char* strchr (char*,char) ;

int cmdline_parts_parse(struct cmdline_parts **parts, const char *cmdline)
{
 int ret;
 char *buf;
 char *pbuf;
 char *next;
 struct cmdline_parts **next_parts;

 *parts = ((void*)0);

 next = pbuf = buf = kstrdup(cmdline, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 next_parts = parts;

 while (next && *pbuf) {
  next = strchr(pbuf, ';');
  if (next)
   *next = '\0';

  ret = parse_parts(next_parts, pbuf);
  if (ret)
   goto fail;

  if (next)
   pbuf = ++next;

  next_parts = &(*next_parts)->next_parts;
 }

 if (!*parts) {
  pr_warn("cmdline partition has no valid partition.");
  ret = -EINVAL;
  goto fail;
 }

 ret = 0;
done:
 kfree(buf);
 return ret;

fail:
 cmdline_parts_free(parts);
 goto done;
}
