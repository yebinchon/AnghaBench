
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void glue_fpu_end (int) ;

__attribute__((used)) static inline void cast5_fpu_end(bool fpu_enabled)
{
 return glue_fpu_end(fpu_enabled);
}
