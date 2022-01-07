
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char const**) ;
 int at_mark (char const*,int,char const**,int ) ;

__attribute__((used)) static inline int push_mark(const char *string, int len)
{
 const char *suffix[] = { "@{push}" };
 return at_mark(string, len, suffix, ARRAY_SIZE(suffix));
}
