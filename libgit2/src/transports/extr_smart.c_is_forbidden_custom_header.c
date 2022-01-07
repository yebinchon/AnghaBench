
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ARRAY_SIZE (int *) ;
 int * forbidden_custom_headers ;
 size_t http_header_name_length (char const*) ;
 scalar_t__ strncmp (int ,char const*,size_t) ;

__attribute__((used)) static bool is_forbidden_custom_header(const char *custom_header)
{
 unsigned long i;
 size_t name_len = http_header_name_length(custom_header);


 for (i = 0; i < ARRAY_SIZE(forbidden_custom_headers); i++)
  if (strncmp(forbidden_custom_headers[i], custom_header, name_len) == 0)
   return 1;

 return 0;
}
