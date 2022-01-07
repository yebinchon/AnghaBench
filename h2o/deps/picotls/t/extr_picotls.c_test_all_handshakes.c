
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int member_0; } ;
typedef TYPE_1__ ptls_sign_certificate_t ;
struct TYPE_7__ {TYPE_1__* sign_certificate; } ;


 TYPE_4__* ctx ;
 TYPE_4__* ctx_peer ;
 TYPE_1__* sc_orig ;
 TYPE_1__* second_sc_orig ;
 int second_sign_certificate ;
 int sign_certificate ;
 int subtest (char*,int ) ;
 int test_enforce_retry_stateful ;
 int test_enforce_retry_stateless ;
 int test_full_handshake ;
 int test_full_handshake_with_client_authentication ;
 int test_handshake_api ;
 int test_hrr_handshake ;
 int test_hrr_stateless_handshake ;
 int test_key_update ;
 int test_resumption ;
 int test_resumption_different_preferred_key_share ;
 int test_resumption_with_client_authentication ;
 int test_stateless_hrr_aad_change ;

__attribute__((used)) static void test_all_handshakes(void)
{
    ptls_sign_certificate_t server_sc = {sign_certificate};
    sc_orig = ctx_peer->sign_certificate;
    ctx_peer->sign_certificate = &server_sc;

    ptls_sign_certificate_t client_sc = {second_sign_certificate};
    if (ctx_peer != ctx) {
        second_sc_orig = ctx->sign_certificate;
        ctx->sign_certificate = &client_sc;
    }

    subtest("full-handshake", test_full_handshake);
    subtest("full-handshake-with-client-authentication", test_full_handshake_with_client_authentication);
    subtest("hrr-handshake", test_hrr_handshake);
    subtest("hrr-stateless-handshake", test_hrr_stateless_handshake);
    subtest("resumption", test_resumption);
    subtest("resumption-different-preferred-key-share", test_resumption_different_preferred_key_share);
    subtest("resumption-with-client-authentication", test_resumption_with_client_authentication);

    subtest("enforce-retry-stateful", test_enforce_retry_stateful);
    subtest("enforce-retry-stateless", test_enforce_retry_stateless);

    subtest("stateless-hrr-aad-change", test_stateless_hrr_aad_change);

    subtest("key-update", test_key_update);

    subtest("handshake-api", test_handshake_api);

    ctx_peer->sign_certificate = sc_orig;

    if (ctx_peer != ctx)
        ctx->sign_certificate = second_sc_orig;
}
