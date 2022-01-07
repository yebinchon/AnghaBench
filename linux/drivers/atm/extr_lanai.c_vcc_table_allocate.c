
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lanai_vcc {int dummy; } ;
struct lanai_dev {int num_vci; struct lanai_vcc** vccs; } ;


 int APRINTK (int,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 scalar_t__ get_zeroed_page (int ) ;
 scalar_t__ unlikely (int ) ;
 struct lanai_vcc** vzalloc (int) ;

__attribute__((used)) static int vcc_table_allocate(struct lanai_dev *lanai)
{






 int bytes = (lanai->num_vci) * sizeof(struct lanai_vcc *);
 lanai->vccs = vzalloc(bytes);
 if (unlikely(lanai->vccs == ((void*)0)))
  return -ENOMEM;
 return 0;

}
