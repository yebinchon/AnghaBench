
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsck_options {int skiplist; } ;


 int die (char*,...) ;
 int free (char*) ;
 int fsck_set_msg_type (struct fsck_options*,char*,char*) ;
 int oidset_parse_file (int *,char*) ;
 int strcmp (char*,char*) ;
 int strcspn (char*,char*) ;
 char tolower (char) ;
 char* xstrdup (char const*) ;

void fsck_set_msg_types(struct fsck_options *options, const char *values)
{
 char *buf = xstrdup(values), *to_free = buf;
 int done = 0;

 while (!done) {
  int len = strcspn(buf, " ,|"), equal;

  done = !buf[len];
  if (!len) {
   buf++;
   continue;
  }
  buf[len] = '\0';

  for (equal = 0;
       equal < len && buf[equal] != '=' && buf[equal] != ':';
       equal++)
   buf[equal] = tolower(buf[equal]);
  buf[equal] = '\0';

  if (!strcmp(buf, "skiplist")) {
   if (equal == len)
    die("skiplist requires a path");
   oidset_parse_file(&options->skiplist, buf + equal + 1);
   buf += len + 1;
   continue;
  }

  if (equal == len)
   die("Missing '=': '%s'", buf);

  fsck_set_msg_type(options, buf, buf + equal + 1);
  buf += len + 1;
 }
 free(to_free);
}
