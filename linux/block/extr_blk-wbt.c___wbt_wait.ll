; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c___wbt_wait.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c___wbt_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_wb = type { i32 }
%struct.rq_wait = type { i32 }
%struct.wbt_wait_data = type { i32, i64, %struct.rq_wb* }

@wbt_inflight_cb = common dso_local global i32 0, align 4
@wbt_cleanup_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq_wb*, i32, i64)* @__wbt_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__wbt_wait(%struct.rq_wb* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.rq_wb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.rq_wait*, align 8
  %8 = alloca %struct.wbt_wait_data, align 8
  store %struct.rq_wb* %0, %struct.rq_wb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.rq_wait* @get_rq_wait(%struct.rq_wb* %9, i32 %10)
  store %struct.rq_wait* %11, %struct.rq_wait** %7, align 8
  %12 = getelementptr inbounds %struct.wbt_wait_data, %struct.wbt_wait_data* %8, i32 0, i32 0
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.wbt_wait_data, %struct.wbt_wait_data* %8, i32 0, i32 1
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds %struct.wbt_wait_data, %struct.wbt_wait_data* %8, i32 0, i32 2
  %17 = load %struct.rq_wb*, %struct.rq_wb** %4, align 8
  store %struct.rq_wb* %17, %struct.rq_wb** %16, align 8
  %18 = load %struct.rq_wait*, %struct.rq_wait** %7, align 8
  %19 = load i32, i32* @wbt_inflight_cb, align 4
  %20 = load i32, i32* @wbt_cleanup_cb, align 4
  %21 = call i32 @rq_qos_wait(%struct.rq_wait* %18, %struct.wbt_wait_data* %8, i32 %19, i32 %20)
  ret void
}

declare dso_local %struct.rq_wait* @get_rq_wait(%struct.rq_wb*, i32) #1

declare dso_local i32 @rq_qos_wait(%struct.rq_wait*, %struct.wbt_wait_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
