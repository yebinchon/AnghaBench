; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_request_dispatch.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_request_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i64, i32 }
%struct.evhttp_request = type { i64 }

@EVHTTP_REQUEST = common dso_local global i64 0, align 8
@EVCON_IDLE = common dso_local global i64 0, align 8
@EVCON_WRITING = common dso_local global i64 0, align 8
@evhttp_write_connectioncb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_connection*)* @evhttp_request_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_request_dispatch(%struct.evhttp_connection* %0) #0 {
  %2 = alloca %struct.evhttp_connection*, align 8
  %3 = alloca %struct.evhttp_request*, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %2, align 8
  %4 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %5 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %4, i32 0, i32 1
  %6 = call %struct.evhttp_request* @TAILQ_FIRST(i32* %5)
  store %struct.evhttp_request* %6, %struct.evhttp_request** %3, align 8
  %7 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %8 = icmp eq %struct.evhttp_request* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %36

10:                                               ; preds = %1
  %11 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %12 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EVHTTP_REQUEST, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @EVUTIL_ASSERT(i32 %16)
  %18 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %19 = call i32 @evhttp_connection_stop_detectclose(%struct.evhttp_connection* %18)
  %20 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %21 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EVCON_IDLE, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @EVUTIL_ASSERT(i32 %25)
  %27 = load i64, i64* @EVCON_WRITING, align 8
  %28 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %29 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %31 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %32 = call i32 @evhttp_make_header(%struct.evhttp_connection* %30, %struct.evhttp_request* %31)
  %33 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %34 = load i32, i32* @evhttp_write_connectioncb, align 4
  %35 = call i32 @evhttp_write_buffer(%struct.evhttp_connection* %33, i32 %34, i32* null)
  br label %36

36:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.evhttp_request* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @evhttp_connection_stop_detectclose(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_make_header(%struct.evhttp_connection*, %struct.evhttp_request*) #1

declare dso_local i32 @evhttp_write_buffer(%struct.evhttp_connection*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
