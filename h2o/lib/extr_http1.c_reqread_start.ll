; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_http1.c_reqread_start.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_http1.c_reqread_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http1_conn_t = type { %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@reqread_on_timeout = common dso_local global i32 0, align 4
@reqread_on_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http1_conn_t*)* @reqread_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reqread_start(%struct.st_h2o_http1_conn_t* %0) #0 {
  %2 = alloca %struct.st_h2o_http1_conn_t*, align 8
  store %struct.st_h2o_http1_conn_t* %0, %struct.st_h2o_http1_conn_t** %2, align 8
  %3 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %4 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %5 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @reqread_on_timeout, align 4
  %14 = call i32 @set_timeout(%struct.st_h2o_http1_conn_t* %3, i32 %12, i32 %13)
  %15 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %16 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = load i32, i32* @reqread_on_read, align 4
  %19 = call i32 @h2o_socket_read_start(%struct.TYPE_12__* %17, i32 %18)
  %20 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %21 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %30 = call i32 @handle_incoming_request(%struct.st_h2o_http1_conn_t* %29)
  br label %31

31:                                               ; preds = %28, %1
  ret void
}

declare dso_local i32 @set_timeout(%struct.st_h2o_http1_conn_t*, i32, i32) #1

declare dso_local i32 @h2o_socket_read_start(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @handle_incoming_request(%struct.st_h2o_http1_conn_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
