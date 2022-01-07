
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ARRAY_SIZE (int ) ;
 int isa207_get_alternatives (int ,int *,int ,unsigned int,int ) ;
 int power9_event_alternatives ;

__attribute__((used)) static int power9_get_alternatives(u64 event, unsigned int flags, u64 alt[])
{
 int num_alt = 0;

 num_alt = isa207_get_alternatives(event, alt,
       ARRAY_SIZE(power9_event_alternatives), flags,
       power9_event_alternatives);

 return num_alt;
}
