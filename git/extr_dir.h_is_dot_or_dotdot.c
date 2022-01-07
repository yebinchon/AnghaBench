
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int is_dot_or_dotdot(const char *name)
{
 return (name[0] == '.' &&
  (name[1] == '\0' ||
   (name[1] == '.' && name[2] == '\0')));
}
