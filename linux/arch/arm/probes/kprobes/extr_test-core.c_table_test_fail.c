
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int bits; } ;
struct TYPE_3__ {int bits; } ;
struct decode_header {TYPE_2__ value; TYPE_1__ mask; } ;


 int EINVAL ;
 int pr_err (char*,char const*,int ,int ) ;

__attribute__((used)) static int table_test_fail(const struct decode_header *h, const char* message)
{

 pr_err("FAIL: kprobes test failure \"%s\" (mask %08x, value %08x)\n",
     message, h->mask.bits, h->value.bits);
 return -EINVAL;
}
