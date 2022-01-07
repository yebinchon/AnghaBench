; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_connection_set_timeout_tv.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_connection_set_timeout_tv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32, i32, i32, i32 }
%struct.timeval = type { i32 }

@EVHTTP_CON_TIMEOUT_ADJUSTED = common dso_local global i32 0, align 4
@HTTP_READ_TIMEOUT = common dso_local global i32 0, align 4
@HTTP_WRITE_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_connection_set_timeout_tv(%struct.evhttp_connection* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca %struct.timeval*, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %5 = load %struct.timeval*, %struct.timeval** %4, align 8
  %6 = icmp ne %struct.timeval* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* @EVHTTP_CON_TIMEOUT_ADJUSTED, align 4
  %9 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %10 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  br label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @EVHTTP_CON_TIMEOUT_ADJUSTED, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %17 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %13, %7
  %21 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %22 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %21, i32 0, i32 1
  %23 = load %struct.timeval*, %struct.timeval** %4, align 8
  %24 = load i32, i32* @HTTP_READ_TIMEOUT, align 4
  %25 = call i32 @evhttp_set_timeout_tv_(i32* %22, %struct.timeval* %23, i32 %24)
  %26 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %27 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %26, i32 0, i32 0
  %28 = load %struct.timeval*, %struct.timeval** %4, align 8
  %29 = load i32, i32* @HTTP_WRITE_TIMEOUT, align 4
  %30 = call i32 @evhttp_set_timeout_tv_(i32* %27, %struct.timeval* %28, i32 %29)
  %31 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %32 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %35 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %34, i32 0, i32 1
  %36 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %37 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %36, i32 0, i32 0
  %38 = call i32 @bufferevent_set_timeouts(i32 %33, i32* %35, i32* %37)
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
