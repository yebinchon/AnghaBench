
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_neverbleed_thread_data_t {int dummy; } ;
struct st_neverbleed_rsa_exdata_t {int nb; } ;
typedef int RSA ;


 struct st_neverbleed_rsa_exdata_t* RSA_get_ex_data (int const*,int ) ;
 int dief (char*) ;
 scalar_t__ errno ;
 struct st_neverbleed_thread_data_t* get_thread_data (int ) ;

__attribute__((used)) static void get_privsep_data(const RSA *rsa, struct st_neverbleed_rsa_exdata_t **exdata,
                             struct st_neverbleed_thread_data_t **thdata)
{
    *exdata = RSA_get_ex_data(rsa, 0);
    if (*exdata == ((void*)0)) {
        errno = 0;
        dief("invalid internal ref");
    }
    *thdata = get_thread_data((*exdata)->nb);
}
