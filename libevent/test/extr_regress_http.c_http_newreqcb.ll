; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_newreqcb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_newreqcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32 }
%struct.http_newreqcb_test_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evhttp_request*, i8*)* @http_newreqcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_newreqcb(%struct.evhttp_request* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.evhttp_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.http_newreqcb_test_state*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.http_newreqcb_test_state*
  store %struct.http_newreqcb_test_state* %8, %struct.http_newreqcb_test_state** %6, align 8
  %9 = load %struct.http_newreqcb_test_state*, %struct.http_newreqcb_test_state** %6, align 8
  %10 = getelementptr inbounds %struct.http_newreqcb_test_state, %struct.http_newreqcb_test_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = load %struct.http_newreqcb_test_state*, %struct.http_newreqcb_test_state** %6, align 8
  %14 = call i32 @http_newreqcb_test_state_check(%struct.http_newreqcb_test_state* %13)
  %15 = load %struct.http_newreqcb_test_state*, %struct.http_newreqcb_test_state** %6, align 8
  %16 = getelementptr inbounds %struct.http_newreqcb_test_state, %struct.http_newreqcb_test_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = srem i32 %17, 7
  %19 = icmp eq i32 1, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.http_newreqcb_test_state*, %struct.http_newreqcb_test_state** %6, align 8
  %22 = getelementptr inbounds %struct.http_newreqcb_test_state, %struct.http_newreqcb_test_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  store i32 -1, i32* %3, align 4
  br label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @http_newreqcb_test_state_check(%struct.http_newreqcb_test_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
