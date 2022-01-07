
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 char* strchr (char*,char) ;

__attribute__((used)) static char *parse_name_and_email(char *buffer, char **name,
      char **email, int allow_empty_email)
{
 char *left, *right, *nstart, *nend;
 *name = *email = ((void*)0);

 if ((left = strchr(buffer, '<')) == ((void*)0))
  return ((void*)0);
 if ((right = strchr(left+1, '>')) == ((void*)0))
  return ((void*)0);
 if (!allow_empty_email && (left+1 == right))
  return ((void*)0);


 nstart = buffer;
 while (isspace(*nstart) && nstart < left)
  ++nstart;
 nend = left-1;
 while (nend > nstart && isspace(*nend))
  --nend;

 *name = (nstart <= nend ? nstart : ((void*)0));
 *email = left+1;
 *(nend+1) = '\0';
 *right++ = '\0';

 return (*right == '\0' ? ((void*)0) : right);
}
