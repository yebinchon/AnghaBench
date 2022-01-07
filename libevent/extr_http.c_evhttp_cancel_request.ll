; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_cancel_request.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_cancel_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { %struct.evhttp_connection* }
%struct.evhttp_connection = type { i32 }

@EVREQ_HTTP_REQUEST_CANCEL = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_cancel_request(%struct.evhttp_request* %0) #0 {
  %2 = alloca %struct.evhttp_request*, align 8
  %3 = alloca %struct.evhttp_connection*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %2, align 8
  %4 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %5 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %4, i32 0, i32 0
  %6 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  store %struct.evhttp_connection* %6, %struct.evhttp_connection** %3, align 8
  %7 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %8 = icmp ne %struct.evhttp_connection* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %11 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %10, i32 0, i32 0
  %12 = call %struct.evhttp_request* @TAILQ_FIRST(i32* %11)
  %13 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %14 = icmp eq %struct.evhttp_request* %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %17 = load i32, i32* @EVREQ_HTTP_REQUEST_CANCEL, align 4
  %18 = call i32 @evhttp_connection_fail_(%struct.evhttp_connection* %16, i32 %17)
  br label %29

19:                                               ; preds = %9
  %20 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %21 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %20, i32 0, i32 0
  %22 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %23 = load i32, i32* @next, align 4
  %24 = call i32 @TAILQ_REMOVE(i32* %21, %struct.evhttp_request* %22, i32 %23)
  br label %25

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %28 = call i32 @evhttp_request_free_auto(%struct.evhttp_request* %27)
  br label %29

29:                                               ; preds = %26, %15
  ret void
}

declare dso_local %struct.evhttp_request* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @evhttp_connection_fail_(%struct.evhttp_connection*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.evhttp_request*, i32) #1

declare dso_local i32 @evhttp_request_free_auto(%struct.evhttp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
