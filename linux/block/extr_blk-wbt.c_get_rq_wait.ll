; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_get_rq_wait.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_get_rq_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_wait = type { i32 }
%struct.rq_wb = type { %struct.rq_wait* }

@WBT_KSWAPD = common dso_local global i32 0, align 4
@WBT_RWQ_KSWAPD = common dso_local global i64 0, align 8
@WBT_DISCARD = common dso_local global i32 0, align 4
@WBT_RWQ_DISCARD = common dso_local global i64 0, align 8
@WBT_RWQ_BG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rq_wait* (%struct.rq_wb*, i32)* @get_rq_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rq_wait* @get_rq_wait(%struct.rq_wb* %0, i32 %1) #0 {
  %3 = alloca %struct.rq_wait*, align 8
  %4 = alloca %struct.rq_wb*, align 8
  %5 = alloca i32, align 4
  store %struct.rq_wb* %0, %struct.rq_wb** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @WBT_KSWAPD, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %12 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %11, i32 0, i32 0
  %13 = load %struct.rq_wait*, %struct.rq_wait** %12, align 8
  %14 = load i64, i64* @WBT_RWQ_KSWAPD, align 8
  %15 = getelementptr inbounds %struct.rq_wait, %struct.rq_wait* %13, i64 %14
  store %struct.rq_wait* %15, %struct.rq_wait** %3, align 8
  br label %34

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @WBT_DISCARD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %23 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %22, i32 0, i32 0
  %24 = load %struct.rq_wait*, %struct.rq_wait** %23, align 8
  %25 = load i64, i64* @WBT_RWQ_DISCARD, align 8
  %26 = getelementptr inbounds %struct.rq_wait, %struct.rq_wait* %24, i64 %25
  store %struct.rq_wait* %26, %struct.rq_wait** %3, align 8
  br label %34

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %30 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %29, i32 0, i32 0
  %31 = load %struct.rq_wait*, %struct.rq_wait** %30, align 8
  %32 = load i64, i64* @WBT_RWQ_BG, align 8
  %33 = getelementptr inbounds %struct.rq_wait, %struct.rq_wait* %31, i64 %32
  store %struct.rq_wait* %33, %struct.rq_wait** %3, align 8
  br label %34

34:                                               ; preds = %28, %21, %10
  %35 = load %struct.rq_wait*, %struct.rq_wait** %3, align 8
  ret %struct.rq_wait* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
