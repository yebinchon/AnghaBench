
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int SPRN_AMR ;
 int mtspr (int ,int ) ;

__attribute__((used)) static inline void write_amr(u64 value)
{
 mtspr(SPRN_AMR, value);
}
