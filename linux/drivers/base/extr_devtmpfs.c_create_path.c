
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_mkdir (char*,int) ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int create_path(const char *nodepath)
{
 char *path;
 char *s;
 int err = 0;


 path = kstrdup(nodepath, GFP_KERNEL);
 if (!path)
  return -ENOMEM;

 s = path;
 for (;;) {
  s = strchr(s, '/');
  if (!s)
   break;
  s[0] = '\0';
  err = dev_mkdir(path, 0755);
  if (err && err != -EEXIST)
   break;
  s[0] = '/';
  s++;
 }
 kfree(path);
 return err;
}
