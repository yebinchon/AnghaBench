
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 char* strchr (char const*,char) ;
 size_t strlen (char*) ;

__attribute__((used)) static const char *name_offset(size_t *len_out, const char *name)
{
 size_t prefix_len;
 const char *dot;

 prefix_len = strlen("remote.");
 dot = strchr(name + prefix_len, '.');

 assert(dot);

 *len_out = dot - name - prefix_len;
 return name + prefix_len;
}
