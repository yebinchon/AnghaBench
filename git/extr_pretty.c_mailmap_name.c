
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {scalar_t__ nr; } ;


 scalar_t__ map_user (struct string_list*,char const**,size_t*,char const**,size_t*) ;
 int read_mailmap (struct string_list*,int *) ;
 struct string_list* xcalloc (int,int) ;

__attribute__((used)) static int mailmap_name(const char **email, size_t *email_len,
   const char **name, size_t *name_len)
{
 static struct string_list *mail_map;
 if (!mail_map) {
  mail_map = xcalloc(1, sizeof(*mail_map));
  read_mailmap(mail_map, ((void*)0));
 }
 return mail_map->nr && map_user(mail_map, email, email_len, name, name_len);
}
