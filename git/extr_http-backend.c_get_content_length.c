
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int die (char*,char const*) ;
 char* getenv (char*) ;
 int git_parse_ssize_t (char const*,int*) ;

__attribute__((used)) static ssize_t get_content_length(void)
{
 ssize_t val = -1;
 const char *str = getenv("CONTENT_LENGTH");

 if (str && *str && !git_parse_ssize_t(str, &val))
  die("failed to parse CONTENT_LENGTH: %s", str);
 return val;
}
