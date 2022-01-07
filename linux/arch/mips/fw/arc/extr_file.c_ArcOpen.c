
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum linux_omode { ____Placeholder_linux_omode } linux_omode ;
typedef int ULONG ;
typedef int LONG ;
typedef int CHAR ;


 int ARC_CALL3 (int ,int *,int,int *) ;
 int open ;

LONG
ArcOpen(CHAR *Path, enum linux_omode OpenMode, ULONG *FileID)
{
 return ARC_CALL3(open, Path, OpenMode, FileID);
}
