
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* reencode_string_len (char const*,int ,char const*,char const*,int *) ;
 int strlen (char const*) ;

__attribute__((used)) static inline char *reencode_string(const char *in,
        const char *out_encoding,
        const char *in_encoding)
{
 return reencode_string_len(in, strlen(in),
       out_encoding, in_encoding,
       ((void*)0));
}
