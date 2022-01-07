
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINTR ;
 int ERESTARTSYS ;

__attribute__((used)) static inline int was_interrupted(int result)
{
 return result == -ERESTARTSYS || result == -EINTR;
}
