
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ quote_path_fully ;
 scalar_t__* sq_lookup ;

__attribute__((used)) static inline int sq_must_quote(char c)
{
 return sq_lookup[(unsigned char)c] + quote_path_fully > 0;
}
