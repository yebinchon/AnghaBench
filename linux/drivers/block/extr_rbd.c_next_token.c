
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strcspn (char const*,char const*) ;
 int strspn (char const*,char const*) ;

__attribute__((used)) static inline size_t next_token(const char **buf)
{




        const char *spaces = " \f\n\r\t\v";

        *buf += strspn(*buf, spaces);

 return strcspn(*buf, spaces);
}
