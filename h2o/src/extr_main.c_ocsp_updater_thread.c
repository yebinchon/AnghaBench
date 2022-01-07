
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ interval; unsigned int max_failures; int cmd; } ;
struct listener_ssl_config_t {char* certificate_file; TYPE_1__ ocsp_stapling; } ;
typedef int h2o_buffer_t ;



 scalar_t__ UINT_MAX ;
 int assert (int) ;
 int fprintf (int ,char*,char*) ;
 int get_ocsp_response (char*,int ,int **) ;
 int h2o_sem_post (int *) ;
 int h2o_sem_wait (int *) ;
 int ocsp_updater_semaphore ;
 int sleep (unsigned int) ;
 int stderr ;
 scalar_t__ time (int *) ;
 int update_ocsp_stapling (struct listener_ssl_config_t*,int *) ;

__attribute__((used)) static void *ocsp_updater_thread(void *_ssl_conf)
{
    struct listener_ssl_config_t *ssl_conf = _ssl_conf;
    time_t next_at = 0, now;
    unsigned fail_cnt = 0;
    int status;
    h2o_buffer_t *resp;

    assert(ssl_conf->ocsp_stapling.interval != 0);

    while (1) {

        if ((now = time(((void*)0))) < next_at) {
            time_t sleep_secs = next_at - now;
            sleep(sleep_secs < UINT_MAX ? (unsigned)sleep_secs : UINT_MAX);
            continue;
        }

        h2o_sem_wait(&ocsp_updater_semaphore);
        status = get_ocsp_response(ssl_conf->certificate_file, ssl_conf->ocsp_stapling.cmd, &resp);
        h2o_sem_post(&ocsp_updater_semaphore);
        switch (status) {
        case 0:
            fail_cnt = 0;
            update_ocsp_stapling(ssl_conf, resp);
            fprintf(stderr, "[OCSP Stapling] successfully updated the response for certificate file:%s\n",
                    ssl_conf->certificate_file);
            break;
        case 128:
            if (fail_cnt == ssl_conf->ocsp_stapling.max_failures) {
                fprintf(stderr,
                        "[OCSP Stapling] OCSP stapling is temporary disabled due to repeated errors for certificate file:%s\n",
                        ssl_conf->certificate_file);
                update_ocsp_stapling(ssl_conf, ((void*)0));
            } else {
                fprintf(stderr,
                        "[OCSP Stapling] reusing old response due to a temporary error occurred while fetching OCSP "
                        "response for certificate file:%s\n",
                        ssl_conf->certificate_file);
                ++fail_cnt;
            }
            break;
        default:
            update_ocsp_stapling(ssl_conf, ((void*)0));
            fprintf(stderr, "[OCSP Stapling] disabled for certificate file:%s\n", ssl_conf->certificate_file);
            goto Exit;
        }

        next_at = time(((void*)0)) + ssl_conf->ocsp_stapling.interval;
    }

Exit:
    return ((void*)0);
}
