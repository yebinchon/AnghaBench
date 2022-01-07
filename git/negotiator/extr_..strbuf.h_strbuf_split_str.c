
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf** strbuf_split_buf (char const*,int ,int,int) ;
 int strlen (char const*) ;

__attribute__((used)) static inline struct strbuf **strbuf_split_str(const char *str,
            int terminator, int max)
{
 return strbuf_split_buf(str, strlen(str), terminator, max);
}
