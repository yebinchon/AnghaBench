; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_benchmark-pump.c_start_stats_collection.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_benchmark-pump.c_start_stats_collection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATS_COUNT = common dso_local global i32 0, align 4
@stats_left = common dso_local global i32 0, align 4
@loop = common dso_local global i32 0, align 4
@timer_handle = common dso_local global i32 0, align 4
@show_stats = common dso_local global i32 0, align 4
@STATS_INTERVAL = common dso_local global i32 0, align 4
@start_time = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @start_stats_collection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_stats_collection() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @STATS_COUNT, align 4
  store i32 %2, i32* @stats_left, align 4
  %3 = load i32, i32* @loop, align 4
  %4 = call i32 @uv_timer_init(i32 %3, i32* @timer_handle)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load i32, i32* @show_stats, align 4
  %10 = load i32, i32* @STATS_INTERVAL, align 4
  %11 = load i32, i32* @STATS_INTERVAL, align 4
  %12 = call i32 @uv_timer_start(i32* @timer_handle, i32 %9, i32 %10, i32 %11)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load i32, i32* @loop, align 4
  %18 = call i32 @uv_update_time(i32 %17)
  %19 = load i32, i32* @loop, align 4
  %20 = call i32 @uv_now(i32 %19)
  store i32 %20, i32* @start_time, align 4
  ret void
}

declare dso_local i32 @uv_timer_init(i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_timer_start(i32*, i32, i32, i32) #1

declare dso_local i32 @uv_update_time(i32) #1

declare dso_local i32 @uv_now(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
