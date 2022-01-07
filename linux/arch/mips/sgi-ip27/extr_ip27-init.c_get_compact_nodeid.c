
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cnodeid_t ;


 int NASID_TO_COMPACT_NODEID (int ) ;
 int get_nasid () ;

cnodeid_t get_compact_nodeid(void)
{
 return NASID_TO_COMPACT_NODEID(get_nasid());
}
