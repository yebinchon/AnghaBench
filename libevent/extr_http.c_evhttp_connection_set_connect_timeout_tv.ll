; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_connection_set_connect_timeout_tv.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_connection_set_connect_timeout_tv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i64, i32, i32, i32 }
%struct.timeval = type { i32 }

@EVHTTP_CON_TIMEOUT_ADJUSTED = common dso_local global i32 0, align 4
@EVCON_CONNECTING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_connection_set_connect_timeout_tv(%struct.evhttp_connection* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca %struct.timeval*, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %5 = load i32, i32* @EVHTTP_CON_TIMEOUT_ADJUSTED, align 4
  %6 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %7 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 8
  %10 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %11 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %10, i32 0, i32 1
  %12 = load %struct.timeval*, %struct.timeval** %4, align 8
  %13 = call i32 @evhttp_set_timeout_tv_(i32* %11, %struct.timeval* %12, i32 -1)
  %14 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %15 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EVCON_CONNECTING, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %21 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %24 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %23, i32 0, i32 1
  %25 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %26 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %25, i32 0, i32 1
  %27 = call i32 @bufferevent_set_timeouts(i32 %22, i32* %24, i32* %26)
  br label %28

28:                                               ; preds = %19, %2
  ret void
}

declare dso_local i32 @evhttp_set_timeout_tv_(i32*, %struct.timeval*, i32) #1

declare dso_local i32 @bufferevent_set_timeouts(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
