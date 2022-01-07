; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_close_detect_done.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_close_detect_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32 }
%struct.timeval = type { i32 }

@HTTP_OK = common dso_local global i64 0, align 8
@test_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_request*, i8*)* @close_detect_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_detect_done(%struct.evhttp_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.timeval, align 4
  store %struct.evhttp_request* %0, %struct.evhttp_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %7 = ptrtoint %struct.evhttp_request* %6 to i32
  %8 = call i32 @tt_assert(i32 %7)
  %9 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %10 = call i64 @evhttp_request_get_response_code(%struct.evhttp_request* %9)
  %11 = load i64, i64* @HTTP_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @tt_assert(i32 %13)
  store i32 1, i32* @test_ok, align 4
  br label %15

15:                                               ; preds = %2
  %16 = call i32 @evutil_timerclear(%struct.timeval* %5)
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 150000, i32* %17, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @event_base_loopexit(i8* %18, %struct.timeval* %5)
  ret void
}

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i64 @evhttp_request_get_response_code(%struct.evhttp_request*) #1

declare dso_local i32 @evutil_timerclear(%struct.timeval*) #1

declare dso_local i32 @event_base_loopexit(i8*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
