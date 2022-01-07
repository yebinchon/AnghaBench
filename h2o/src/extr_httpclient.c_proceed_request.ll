; ModuleID = '/home/carl/AnghaBench/h2o/src/extr_httpclient.c_proceed_request.c'
source_filename = "/home/carl/AnghaBench/h2o/src/extr_httpclient.c_proceed_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.st_timeout_ctx = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }

@cur_req_body_size = common dso_local global i64 0, align 8
@timeout_cb = common dso_local global i32 0, align 4
@delay_interval_ms = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, i32)* @proceed_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proceed_request(%struct.TYPE_6__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_timeout_ctx*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @cur_req_body_size, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %3
  %11 = call %struct.st_timeout_ctx* @h2o_mem_alloc(i32 16)
  store %struct.st_timeout_ctx* %11, %struct.st_timeout_ctx** %7, align 8
  %12 = load %struct.st_timeout_ctx*, %struct.st_timeout_ctx** %7, align 8
  %13 = call i32 @memset(%struct.st_timeout_ctx* %12, i32 0, i32 16)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = load %struct.st_timeout_ctx*, %struct.st_timeout_ctx** %7, align 8
  %16 = getelementptr inbounds %struct.st_timeout_ctx, %struct.st_timeout_ctx* %15, i32 0, i32 1
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %16, align 8
  %17 = load i32, i32* @timeout_cb, align 4
  %18 = load %struct.st_timeout_ctx*, %struct.st_timeout_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.st_timeout_ctx, %struct.st_timeout_ctx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @delay_interval_ms, align 4
  %27 = load %struct.st_timeout_ctx*, %struct.st_timeout_ctx** %7, align 8
  %28 = getelementptr inbounds %struct.st_timeout_ctx, %struct.st_timeout_ctx* %27, i32 0, i32 0
  %29 = call i32 @h2o_timer_link(i32 %25, i32 %26, %struct.TYPE_7__* %28)
  br label %30

30:                                               ; preds = %10, %3
  ret void
}

declare dso_local %struct.st_timeout_ctx* @h2o_mem_alloc(i32) #1

declare dso_local i32 @memset(%struct.st_timeout_ctx*, i32, i32) #1

declare dso_local i32 @h2o_timer_link(i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
