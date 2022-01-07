
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ticket ;
struct TYPE_8__ {int cb; } ;
struct st_util_save_ticket_t {TYPE_2__ super; int fn; } ;
struct TYPE_7__ {int session_ticket; } ;
struct TYPE_9__ {TYPE_1__ client; } ;
typedef TYPE_3__ ptls_handshake_properties_t ;
struct TYPE_10__ {TYPE_2__* save_ticket; } ;
typedef TYPE_4__ ptls_context_t ;
typedef int FILE ;


 int exit (int) ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 size_t fread (int *,int,int,int *) ;
 int ptls_iovec_init (int *,size_t) ;
 int stderr ;
 int strcpy (int ,char const*) ;
 int util_save_ticket_cb ;

__attribute__((used)) static inline void setup_session_file(ptls_context_t *ctx, ptls_handshake_properties_t *hsprop, const char *fn)
{
    static struct st_util_save_ticket_t st;
    FILE *fp;


    strcpy(st.fn, fn);
    st.super.cb = util_save_ticket_cb;
    ctx->save_ticket = &st.super;


    if ((fp = fopen(fn, "rb")) != ((void*)0)) {
        static uint8_t ticket[16384];
        size_t ticket_size = fread(ticket, 1, sizeof(ticket), fp);
        if (ticket_size == 0 || !feof(fp)) {
            fprintf(stderr, "failed to load ticket from file:%s\n", fn);
            exit(1);
        }
        fclose(fp);
        hsprop->client.session_ticket = ptls_iovec_init(ticket, ticket_size);
    }
}
