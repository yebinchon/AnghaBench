
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short SEGMENT_LDT ;
 unsigned short SEGMENT_TI_MASK ;
 int ds ;
 int es ;
 int loadsegment (int ,unsigned short) ;
 int savesegment (int ,unsigned short) ;

__attribute__((used)) static void refresh_ldt_segments(void)
{
}
