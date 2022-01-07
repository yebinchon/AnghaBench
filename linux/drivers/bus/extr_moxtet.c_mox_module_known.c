
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TURRIS_MOX_MODULE_FIRST ;
 unsigned int TURRIS_MOX_MODULE_LAST ;

__attribute__((used)) static inline bool mox_module_known(unsigned int id)
{
 return id >= TURRIS_MOX_MODULE_FIRST && id <= TURRIS_MOX_MODULE_LAST;
}
