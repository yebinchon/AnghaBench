
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dir_entry {int len; char* name; } ;


 int memcmp (char*,char*,int) ;

int check_dir_entry_contains(const struct dir_entry *out, const struct dir_entry *in)
{
 return (out->len < in->len) &&
  (out->name[out->len - 1] == '/') &&
  !memcmp(out->name, in->name, out->len);
}
