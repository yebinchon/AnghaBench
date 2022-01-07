; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_http1.c_send_bad_request.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_http1.c_send_bad_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http1_conn_t = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"Bad Request\00", align 1
@H2O_SEND_ERROR_HTTP1_CLOSE_CONNECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http1_conn_t*, i8*)* @send_bad_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_bad_request(%struct.st_h2o_http1_conn_t* %0, i8* %1) #0 {
  %3 = alloca %struct.st_h2o_http1_conn_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.st_h2o_http1_conn_t* %0, %struct.st_h2o_http1_conn_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %3, align 8
  %6 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @h2o_socket_read_stop(i32 %7)
  %9 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %3, align 8
  %10 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %9, i32 0, i32 0
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @H2O_SEND_ERROR_HTTP1_CLOSE_CONNECTION, align 4
  %13 = call i32 @h2o_send_error_400(i32* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %12)
  ret void
}

declare dso_local i32 @h2o_socket_read_stop(i32) #1

declare dso_local i32 @h2o_send_error_400(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
