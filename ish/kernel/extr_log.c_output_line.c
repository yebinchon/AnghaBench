
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_buf_append (char const*) ;
 int log_line (char const*) ;

__attribute__((used)) static void output_line(const char *line) {

    log_line(line);

    log_buf_append(line);
    log_buf_append("\n");
}
