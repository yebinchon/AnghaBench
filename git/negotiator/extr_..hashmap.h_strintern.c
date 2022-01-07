
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* memintern (char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static inline const char *strintern(const char *string)
{
 return memintern(string, strlen(string));
}
