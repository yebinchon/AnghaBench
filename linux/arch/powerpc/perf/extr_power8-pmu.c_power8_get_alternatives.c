
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ARRAY_SIZE (int ) ;
 int event_alternatives ;
 int isa207_get_alternatives (int ,int *,int ,unsigned int,int ) ;

__attribute__((used)) static int power8_get_alternatives(u64 event, unsigned int flags, u64 alt[])
{
 int num_alt = 0;

 num_alt = isa207_get_alternatives(event, alt,
       ARRAY_SIZE(event_alternatives), flags,
       event_alternatives);

 return num_alt;
}
