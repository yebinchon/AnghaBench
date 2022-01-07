
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ebook_switch_idev ;
 int input_unregister_device (int ) ;

__attribute__((used)) static void free_ebook_switch(void)
{
 input_unregister_device(ebook_switch_idev);
}
