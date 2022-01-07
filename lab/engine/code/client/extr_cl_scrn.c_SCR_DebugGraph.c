
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ARRAY_LEN (float*) ;
 size_t current ;
 float* values ;

void SCR_DebugGraph (float value)
{
 values[current] = value;
 current = (current + 1) % ARRAY_LEN(values);
}
