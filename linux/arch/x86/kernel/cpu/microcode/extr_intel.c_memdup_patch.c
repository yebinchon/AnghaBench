
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucode_patch {int data; } ;


 int GFP_KERNEL ;
 int kfree (struct ucode_patch*) ;
 int kmemdup (void*,unsigned int,int ) ;
 struct ucode_patch* kzalloc (int,int ) ;

__attribute__((used)) static struct ucode_patch *memdup_patch(void *data, unsigned int size)
{
 struct ucode_patch *p;

 p = kzalloc(sizeof(struct ucode_patch), GFP_KERNEL);
 if (!p)
  return ((void*)0);

 p->data = kmemdup(data, size, GFP_KERNEL);
 if (!p->data) {
  kfree(p);
  return ((void*)0);
 }

 return p;
}
