
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_finfo {int dummy; } ;
typedef int ULONG ;
typedef int LONG ;


 int ARC_CALL2 (int ,int ,struct linux_finfo*) ;
 int get_finfo ;

LONG
ArcGetFileInformation(ULONG FileID, struct linux_finfo *Information)
{
 return ARC_CALL2(get_finfo, FileID, Information);
}
