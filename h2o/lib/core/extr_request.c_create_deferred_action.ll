; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_request.c_create_deferred_action.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_request.c_create_deferred_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_deferred_request_action_t = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@on_deferred_action_dispose = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.st_deferred_request_action_t* (%struct.TYPE_7__*, i64, i32)* @create_deferred_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.st_deferred_request_action_t* @create_deferred_action(%struct.TYPE_7__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_deferred_request_action_t*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load i64, i64* %5, align 8
  %11 = load i32, i32* @on_deferred_action_dispose, align 4
  %12 = call %struct.st_deferred_request_action_t* @h2o_mem_alloc_shared(i32* %9, i64 %10, i32 %11)
  store %struct.st_deferred_request_action_t* %12, %struct.st_deferred_request_action_t** %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = load %struct.st_deferred_request_action_t*, %struct.st_deferred_request_action_t** %7, align 8
  %15 = getelementptr inbounds %struct.st_deferred_request_action_t, %struct.st_deferred_request_action_t* %14, i32 0, i32 1
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %15, align 8
  %16 = load %struct.st_deferred_request_action_t*, %struct.st_deferred_request_action_t** %7, align 8
  %17 = getelementptr inbounds %struct.st_deferred_request_action_t, %struct.st_deferred_request_action_t* %16, i32 0, i32 0
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @h2o_timer_init(i32* %17, i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.st_deferred_request_action_t*, %struct.st_deferred_request_action_t** %7, align 8
  %28 = getelementptr inbounds %struct.st_deferred_request_action_t, %struct.st_deferred_request_action_t* %27, i32 0, i32 0
  %29 = call i32 @h2o_timer_link(i32 %26, i32 0, i32* %28)
  %30 = load %struct.st_deferred_request_action_t*, %struct.st_deferred_request_action_t** %7, align 8
  ret %struct.st_deferred_request_action_t* %30
}

declare dso_local %struct.st_deferred_request_action_t* @h2o_mem_alloc_shared(i32*, i64, i32) #1

declare dso_local i32 @h2o_timer_init(i32*, i32) #1

declare dso_local i32 @h2o_timer_link(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
