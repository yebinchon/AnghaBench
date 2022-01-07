
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int GIT_STATUS_WT_DELETED ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int cb_status__check_592(const char *p, unsigned int s, void *payload)
{
 if (s != GIT_STATUS_WT_DELETED ||
  (payload != ((void*)0) && strcmp(p, (const char *)payload) != 0))
  return -1;

 return 0;
}
