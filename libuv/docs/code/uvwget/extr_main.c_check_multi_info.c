
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int msg; int easy_handle; } ;
typedef TYPE_1__ CURLMsg ;


 int CURLINFO_EFFECTIVE_URL ;

 int abort () ;
 int curl_easy_cleanup (int ) ;
 int curl_easy_getinfo (int ,int ,char**) ;
 int curl_handle ;
 TYPE_1__* curl_multi_info_read (int ,int*) ;
 int curl_multi_remove_handle (int ,int ) ;
 int fprintf (int ,char*) ;
 int printf (char*,char*) ;
 int stderr ;

void check_multi_info(void) {
    char *done_url;
    CURLMsg *message;
    int pending;

    while ((message = curl_multi_info_read(curl_handle, &pending))) {
        switch (message->msg) {
        case 128:
            curl_easy_getinfo(message->easy_handle, CURLINFO_EFFECTIVE_URL,
                            &done_url);
            printf("%s DONE\n", done_url);

            curl_multi_remove_handle(curl_handle, message->easy_handle);
            curl_easy_cleanup(message->easy_handle);
            break;

        default:
            fprintf(stderr, "CURLMSG default\n");
            abort();
        }
    }
}
