
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int zpci_dbg (int,char*,int) ;
 int zpci_unique_uid ;

__attribute__((used)) static void update_uid_checking(bool new)
{
 if (zpci_unique_uid != new)
  zpci_dbg(1, "uid checking:%d\n", new);

 zpci_unique_uid = new;
}
