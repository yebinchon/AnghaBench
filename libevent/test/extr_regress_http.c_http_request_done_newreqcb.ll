; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_request_done_newreqcb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_request_done_newreqcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32 }
%struct.http_newreqcb_test_state = type { i32, i32 }

@HTTP_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_request*, i8*)* @http_request_done_newreqcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_request_done_newreqcb(%struct.evhttp_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.http_newreqcb_test_state*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.http_newreqcb_test_state*
  store %struct.http_newreqcb_test_state* %7, %struct.http_newreqcb_test_state** %5, align 8
  %8 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %9 = icmp ne %struct.evhttp_request* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %12 = call i64 @evhttp_request_get_response_code(%struct.evhttp_request* %11)
  %13 = load i64, i64* @HTTP_OK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.http_newreqcb_test_state*, %struct.http_newreqcb_test_state** %5, align 8
  %17 = getelementptr inbounds %struct.http_newreqcb_test_state, %struct.http_newreqcb_test_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %21 = call i32 @evhttp_request_set_error_cb(%struct.evhttp_request* %20, i32* null)
  br label %22

22:                                               ; preds = %15, %10, %2
  %23 = load %struct.http_newreqcb_test_state*, %struct.http_newreqcb_test_state** %5, align 8
  %24 = getelementptr inbounds %struct.http_newreqcb_test_state, %struct.http_newreqcb_test_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.http_newreqcb_test_state*, %struct.http_newreqcb_test_state** %5, align 8
  %28 = call i32 @http_newreqcb_test_state_check(%struct.http_newreqcb_test_state* %27)
  ret void
}

declare dso_local i64 @evhttp_request_get_response_code(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_request_set_error_cb(%struct.evhttp_request*, i32*) #1

declare dso_local i32 @http_newreqcb_test_state_check(%struct.http_newreqcb_test_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
