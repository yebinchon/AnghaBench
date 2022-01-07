; ModuleID = '/home/carl/AnghaBench/libevent/extr_evrpc.c_evrpc_make_request.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evrpc.c_evrpc_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_request_wrapper = type { i32, %struct.evrpc_pool* }
%struct.evrpc_pool = type { i32, i32, i32 }

@evrpc_request_timeout = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evrpc_make_request(%struct.evrpc_request_wrapper* %0) #0 {
  %2 = alloca %struct.evrpc_request_wrapper*, align 8
  %3 = alloca %struct.evrpc_pool*, align 8
  store %struct.evrpc_request_wrapper* %0, %struct.evrpc_request_wrapper** %2, align 8
  %4 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %2, align 8
  %5 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %4, i32 0, i32 1
  %6 = load %struct.evrpc_pool*, %struct.evrpc_pool** %5, align 8
  store %struct.evrpc_pool* %6, %struct.evrpc_pool** %3, align 8
  %7 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %2, align 8
  %8 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %7, i32 0, i32 0
  %9 = load %struct.evrpc_pool*, %struct.evrpc_pool** %3, align 8
  %10 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @evrpc_request_timeout, align 4
  %13 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %2, align 8
  %14 = call i32 @evtimer_assign(i32* %8, i32 %11, i32 %12, %struct.evrpc_request_wrapper* %13)
  %15 = load %struct.evrpc_pool*, %struct.evrpc_pool** %3, align 8
  %16 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %15, i32 0, i32 1
  %17 = call i32* @TAILQ_FIRST(i32* %16)
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @EVUTIL_ASSERT(i32 %19)
  %21 = load %struct.evrpc_pool*, %struct.evrpc_pool** %3, align 8
  %22 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %21, i32 0, i32 0
  %23 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %2, align 8
  %24 = load i32, i32* @next, align 4
  %25 = call i32 @TAILQ_INSERT_TAIL(i32* %22, %struct.evrpc_request_wrapper* %23, i32 %24)
  %26 = load %struct.evrpc_pool*, %struct.evrpc_pool** %3, align 8
  %27 = call i32 @evrpc_pool_schedule(%struct.evrpc_pool* %26)
  ret i32 0
}

declare dso_local i32 @evtimer_assign(i32*, i32, i32, %struct.evrpc_request_wrapper*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.evrpc_request_wrapper*, i32) #1

declare dso_local i32 @evrpc_pool_schedule(%struct.evrpc_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
