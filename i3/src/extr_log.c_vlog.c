
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
typedef int time_t ;
struct tm {int dummy; } ;
struct timeval {int tv_sec; int tv_usec; } ;
typedef int message ;
typedef int i3_shmlog_header ;
struct TYPE_2__ {int condvar; int wrap_count; } ;


 int fprintf (int ,char*) ;
 int fwrite (char*,size_t,int,int ) ;
 int gettimeofday (struct timeval*,int *) ;
 TYPE_1__* header ;
 struct tm* localtime_r (int *,struct tm*) ;
 scalar_t__ logbuffer ;
 scalar_t__ logbuffer_size ;
 scalar_t__ loglastwrap ;
 scalar_t__ logwalk ;
 int printf (char*,char*,...) ;
 int pthread_cond_broadcast (int *) ;
 int stderr ;
 int stdout ;
 int store_log_markers () ;
 size_t strftime (char*,int,char*,struct tm*) ;
 int strncpy (scalar_t__,char*,size_t) ;
 int time (int *) ;
 int vprintf (char const*,int ) ;
 scalar_t__ vsnprintf (char*,int,char const*,int ) ;

__attribute__((used)) static void vlog(const bool print, const char *fmt, va_list args) {


    static char message[4096];
    static struct tm result;
    static time_t t;
    static struct tm *tmp;
    static size_t len;


    t = time(((void*)0));

    tmp = localtime_r(&t, &result);

    len = strftime(message, sizeof(message), "%x %X - ", tmp);
    if (!logbuffer) {





        printf("%s", message);

        vprintf(fmt, args);
    } else {
        len += vsnprintf(message + len, sizeof(message) - len, fmt, args);
        if (len >= sizeof(message)) {
            fprintf(stderr, "BUG: single log message > 4k\n");




            len = sizeof(message);



            message[len - 2] = '\n';
        }



        if (len >= (size_t)(logbuffer_size - (logwalk - logbuffer))) {
            loglastwrap = logwalk;
            logwalk = logbuffer + sizeof(i3_shmlog_header);
            store_log_markers();
            header->wrap_count++;
        }



        strncpy(logwalk, message, len);
        logwalk += len;

        store_log_markers();



        pthread_cond_broadcast(&(header->condvar));


        if (print)
            fwrite(message, len, 1, stdout);
    }
}
