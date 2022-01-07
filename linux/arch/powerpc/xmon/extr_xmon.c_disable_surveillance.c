
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtas_args {int dummy; } ;


 scalar_t__ RTAS_UNKNOWN_SERVICE ;
 int SURVEILLANCE_TOKEN ;
 int rtas_call_unlocked (struct rtas_args*,scalar_t__,int,int,int *,int ,int ,int ) ;
 scalar_t__ set_indicator_token ;

__attribute__((used)) static inline void disable_surveillance(void)
{
}
