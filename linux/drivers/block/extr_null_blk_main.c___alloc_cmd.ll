; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c___alloc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c___alloc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nullb_cmd = type { i32, %struct.TYPE_4__, %struct.nullb_queue* }
%struct.TYPE_4__ = type { i32 }
%struct.nullb_queue = type { %struct.TYPE_3__*, %struct.nullb_cmd* }
%struct.TYPE_3__ = type { i64 }

@NULL_IRQ_TIMER = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@null_cmd_timer_expired = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nullb_cmd* (%struct.nullb_queue*)* @__alloc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nullb_cmd* @__alloc_cmd(%struct.nullb_queue* %0) #0 {
  %2 = alloca %struct.nullb_cmd*, align 8
  %3 = alloca %struct.nullb_queue*, align 8
  %4 = alloca %struct.nullb_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.nullb_queue* %0, %struct.nullb_queue** %3, align 8
  %6 = load %struct.nullb_queue*, %struct.nullb_queue** %3, align 8
  %7 = call i32 @get_tag(%struct.nullb_queue* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %42

10:                                               ; preds = %1
  %11 = load %struct.nullb_queue*, %struct.nullb_queue** %3, align 8
  %12 = getelementptr inbounds %struct.nullb_queue, %struct.nullb_queue* %11, i32 0, i32 1
  %13 = load %struct.nullb_cmd*, %struct.nullb_cmd** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.nullb_cmd, %struct.nullb_cmd* %13, i64 %15
  store %struct.nullb_cmd* %16, %struct.nullb_cmd** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.nullb_cmd*, %struct.nullb_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.nullb_cmd, %struct.nullb_cmd* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.nullb_queue*, %struct.nullb_queue** %3, align 8
  %21 = load %struct.nullb_cmd*, %struct.nullb_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.nullb_cmd, %struct.nullb_cmd* %21, i32 0, i32 2
  store %struct.nullb_queue* %20, %struct.nullb_queue** %22, align 8
  %23 = load %struct.nullb_queue*, %struct.nullb_queue** %3, align 8
  %24 = getelementptr inbounds %struct.nullb_queue, %struct.nullb_queue* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NULL_IRQ_TIMER, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %10
  %31 = load %struct.nullb_cmd*, %struct.nullb_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.nullb_cmd, %struct.nullb_cmd* %31, i32 0, i32 1
  %33 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %34 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %35 = call i32 @hrtimer_init(%struct.TYPE_4__* %32, i32 %33, i32 %34)
  %36 = load i32, i32* @null_cmd_timer_expired, align 4
  %37 = load %struct.nullb_cmd*, %struct.nullb_cmd** %4, align 8
  %38 = getelementptr inbounds %struct.nullb_cmd, %struct.nullb_cmd* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  br label %40

40:                                               ; preds = %30, %10
  %41 = load %struct.nullb_cmd*, %struct.nullb_cmd** %4, align 8
  store %struct.nullb_cmd* %41, %struct.nullb_cmd** %2, align 8
  br label %43

42:                                               ; preds = %1
  store %struct.nullb_cmd* null, %struct.nullb_cmd** %2, align 8
  br label %43

43:                                               ; preds = %42, %40
  %44 = load %struct.nullb_cmd*, %struct.nullb_cmd** %2, align 8
  ret %struct.nullb_cmd* %44
}

declare dso_local i32 @get_tag(%struct.nullb_queue*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
