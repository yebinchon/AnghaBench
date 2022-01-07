
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device_id {scalar_t__* name; } ;
struct platform_device {struct platform_device_id const* id_entry; int name; } ;


 scalar_t__ strcmp (int ,scalar_t__*) ;

__attribute__((used)) static const struct platform_device_id *platform_match_id(
   const struct platform_device_id *id,
   struct platform_device *pdev)
{
 while (id->name[0]) {
  if (strcmp(pdev->name, id->name) == 0) {
   pdev->id_entry = id;
   return id;
  }
  id++;
 }
 return ((void*)0);
}
