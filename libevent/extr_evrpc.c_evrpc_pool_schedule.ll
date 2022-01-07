; ModuleID = '/home/carl/AnghaBench/libevent/extr_evrpc.c_evrpc_pool_schedule.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evrpc.c_evrpc_pool_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_pool = type { i32 }
%struct.evrpc_request_wrapper = type { i32 }
%struct.evhttp_connection = type { i32 }

@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evrpc_pool*)* @evrpc_pool_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evrpc_pool_schedule(%struct.evrpc_pool* %0) #0 {
  %2 = alloca %struct.evrpc_pool*, align 8
  %3 = alloca %struct.evrpc_request_wrapper*, align 8
  %4 = alloca %struct.evhttp_connection*, align 8
  store %struct.evrpc_pool* %0, %struct.evrpc_pool** %2, align 8
  %5 = load %struct.evrpc_pool*, %struct.evrpc_pool** %2, align 8
  %6 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %5, i32 0, i32 0
  %7 = call %struct.evrpc_request_wrapper* @TAILQ_FIRST(i32* %6)
  store %struct.evrpc_request_wrapper* %7, %struct.evrpc_request_wrapper** %3, align 8
  %8 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %3, align 8
  %9 = icmp eq %struct.evrpc_request_wrapper* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.evrpc_pool*, %struct.evrpc_pool** %2, align 8
  %13 = call %struct.evhttp_connection* @evrpc_pool_find_connection(%struct.evrpc_pool* %12)
  store %struct.evhttp_connection* %13, %struct.evhttp_connection** %4, align 8
  %14 = icmp ne %struct.evhttp_connection* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load %struct.evrpc_pool*, %struct.evrpc_pool** %2, align 8
  %17 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %16, i32 0, i32 0
  %18 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %3, align 8
  %19 = load i32, i32* @next, align 4
  %20 = call i32 @TAILQ_REMOVE(i32* %17, %struct.evrpc_request_wrapper* %18, i32 %19)
  %21 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %22 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %3, align 8
  %23 = call i32 @evrpc_schedule_request(%struct.evhttp_connection* %21, %struct.evrpc_request_wrapper* %22)
  br label %24

24:                                               ; preds = %10, %15, %11
  ret void
}

declare dso_local %struct.evrpc_request_wrapper* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.evhttp_connection* @evrpc_pool_find_connection(%struct.evrpc_pool*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.evrpc_request_wrapper*, i32) #1

declare dso_local i32 @evrpc_schedule_request(%struct.evhttp_connection*, %struct.evrpc_request_wrapper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
