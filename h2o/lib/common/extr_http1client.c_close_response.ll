; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http1client.c_close_response.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http1client.c_close_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http1client_t = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@STREAM_STATE_CLOSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http1client_t*)* @close_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_response(%struct.st_h2o_http1client_t* %0) #0 {
  %2 = alloca %struct.st_h2o_http1client_t*, align 8
  store %struct.st_h2o_http1client_t* %0, %struct.st_h2o_http1client_t** %2, align 8
  %3 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %4 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @STREAM_STATE_CLOSED, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %12 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @STREAM_STATE_CLOSED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %19 = call i32 @close_client(%struct.st_h2o_http1client_t* %18)
  br label %25

20:                                               ; preds = %1
  %21 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %2, align 8
  %22 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @h2o_socket_read_stop(i32 %23)
  br label %25

25:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @close_client(%struct.st_h2o_http1client_t*) #1

declare dso_local i32 @h2o_socket_read_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
