
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int A1 ;
 int _uasm_i_pref (int **,int ,scalar_t__,int ) ;
 int cache_line_mask () ;
 scalar_t__ pref_bias_copy_load ;
 int pref_src_mode ;

__attribute__((used)) static inline void build_copy_load_pref(u32 **buf, int off)
{
 if (off & cache_line_mask())
  return;

 if (pref_bias_copy_load)
  _uasm_i_pref(buf, pref_src_mode, pref_bias_copy_load + off, A1);
}
