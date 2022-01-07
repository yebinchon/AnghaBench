
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int CONFIG_URL_FMT ;
 int set_url (int *,char const*,int ,char const*) ;

int git_remote_set_url(git_repository *repo, const char *remote, const char *url)
{
 return set_url(repo, remote, CONFIG_URL_FMT, url);
}
