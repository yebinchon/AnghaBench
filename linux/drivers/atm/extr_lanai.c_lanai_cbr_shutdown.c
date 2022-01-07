
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lanai_dev {int conf2; } ;


 int CONFIG2_CBR_ENABLE ;
 int conf2_write (struct lanai_dev*) ;

__attribute__((used)) static inline void lanai_cbr_shutdown(struct lanai_dev *lanai)
{
 lanai->conf2 &= ~CONFIG2_CBR_ENABLE;
 conf2_write(lanai);
}
