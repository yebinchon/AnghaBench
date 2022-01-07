
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* downcased; char* id_string; char* camelcased; } ;


 int FSCK_MSG_MAX ;
 TYPE_1__* msg_id_info ;
 int strlen (char const*) ;
 void* tolower (int ) ;
 char* xmalloc (int) ;

__attribute__((used)) static void prepare_msg_ids(void)
{
 int i;

 if (msg_id_info[0].downcased)
  return;


 for (i = 0; i < FSCK_MSG_MAX; i++) {
  const char *p = msg_id_info[i].id_string;
  int len = strlen(p);
  char *q = xmalloc(len);

  msg_id_info[i].downcased = q;
  while (*p)
   if (*p == '_')
    p++;
   else
    *(q)++ = tolower(*(p)++);
  *q = '\0';

  p = msg_id_info[i].id_string;
  q = xmalloc(len);
  msg_id_info[i].camelcased = q;
  while (*p) {
   if (*p == '_') {
    p++;
    if (*p)
     *q++ = *p++;
   } else {
    *q++ = tolower(*p++);
   }
  }
  *q = '\0';
 }
}
