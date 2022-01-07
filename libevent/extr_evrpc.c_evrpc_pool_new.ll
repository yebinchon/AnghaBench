; ModuleID = '/home/carl/AnghaBench/libevent/extr_evrpc.c_evrpc_pool_new.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evrpc.c_evrpc_pool_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_pool = type { i32, %struct.event_base*, i32, i32, i32, i32, i32 }
%struct.event_base = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evrpc_pool* @evrpc_pool_new(%struct.event_base* %0) #0 {
  %2 = alloca %struct.evrpc_pool*, align 8
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca %struct.evrpc_pool*, align 8
  store %struct.event_base* %0, %struct.event_base** %3, align 8
  %5 = call %struct.evrpc_pool* @mm_calloc(i32 1, i32 40)
  store %struct.evrpc_pool* %5, %struct.evrpc_pool** %4, align 8
  %6 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %7 = icmp eq %struct.evrpc_pool* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.evrpc_pool* null, %struct.evrpc_pool** %2, align 8
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %11 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %10, i32 0, i32 6
  %12 = call i32 @TAILQ_INIT(i32* %11)
  %13 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %14 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %13, i32 0, i32 5
  %15 = call i32 @TAILQ_INIT(i32* %14)
  %16 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %17 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %16, i32 0, i32 4
  %18 = call i32 @TAILQ_INIT(i32* %17)
  %19 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %20 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %19, i32 0, i32 3
  %21 = call i32 @TAILQ_INIT(i32* %20)
  %22 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %23 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %22, i32 0, i32 2
  %24 = call i32 @TAILQ_INIT(i32* %23)
  %25 = load %struct.event_base*, %struct.event_base** %3, align 8
  %26 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %27 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %26, i32 0, i32 1
  store %struct.event_base* %25, %struct.event_base** %27, align 8
  %28 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  %29 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  %30 = load %struct.evrpc_pool*, %struct.evrpc_pool** %4, align 8
  store %struct.evrpc_pool* %30, %struct.evrpc_pool** %2, align 8
  br label %31

31:                                               ; preds = %9, %8
  %32 = load %struct.evrpc_pool*, %struct.evrpc_pool** %2, align 8
  ret %struct.evrpc_pool* %32
}

declare dso_local %struct.evrpc_pool* @mm_calloc(i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
