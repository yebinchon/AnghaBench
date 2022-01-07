
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ESR_ELx_EC (unsigned int) ;
 scalar_t__ ESR_ELx_EC_IABT_CUR ;

__attribute__((used)) static bool is_el1_instruction_abort(unsigned int esr)
{
 return ESR_ELx_EC(esr) == ESR_ELx_EC_IABT_CUR;
}
