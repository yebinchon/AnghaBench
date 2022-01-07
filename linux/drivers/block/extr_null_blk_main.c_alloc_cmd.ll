; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_alloc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_alloc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nullb_cmd = type { i32 }
%struct.nullb_queue = type { i32 }

@wait = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nullb_cmd* (%struct.nullb_queue*, i32)* @alloc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nullb_cmd* @alloc_cmd(%struct.nullb_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.nullb_cmd*, align 8
  %4 = alloca %struct.nullb_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nullb_cmd*, align 8
  store %struct.nullb_queue* %0, %struct.nullb_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @wait, align 4
  %8 = call i32 @DEFINE_WAIT(i32 %7)
  %9 = load %struct.nullb_queue*, %struct.nullb_queue** %4, align 8
  %10 = call %struct.nullb_cmd* @__alloc_cmd(%struct.nullb_queue* %9)
  store %struct.nullb_cmd* %10, %struct.nullb_cmd** %6, align 8
  %11 = load %struct.nullb_cmd*, %struct.nullb_cmd** %6, align 8
  %12 = icmp ne %struct.nullb_cmd* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.nullb_cmd*, %struct.nullb_cmd** %6, align 8
  store %struct.nullb_cmd* %17, %struct.nullb_cmd** %3, align 8
  br label %37

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %31, %18
  %20 = load %struct.nullb_queue*, %struct.nullb_queue** %4, align 8
  %21 = getelementptr inbounds %struct.nullb_queue, %struct.nullb_queue* %20, i32 0, i32 0
  %22 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %23 = call i32 @prepare_to_wait(i32* %21, i32* @wait, i32 %22)
  %24 = load %struct.nullb_queue*, %struct.nullb_queue** %4, align 8
  %25 = call %struct.nullb_cmd* @__alloc_cmd(%struct.nullb_queue* %24)
  store %struct.nullb_cmd* %25, %struct.nullb_cmd** %6, align 8
  %26 = load %struct.nullb_cmd*, %struct.nullb_cmd** %6, align 8
  %27 = icmp ne %struct.nullb_cmd* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %32

29:                                               ; preds = %19
  %30 = call i32 (...) @io_schedule()
  br label %31

31:                                               ; preds = %29
  br i1 true, label %19, label %32

32:                                               ; preds = %31, %28
  %33 = load %struct.nullb_queue*, %struct.nullb_queue** %4, align 8
  %34 = getelementptr inbounds %struct.nullb_queue, %struct.nullb_queue* %33, i32 0, i32 0
  %35 = call i32 @finish_wait(i32* %34, i32* @wait)
  %36 = load %struct.nullb_cmd*, %struct.nullb_cmd** %6, align 8
  store %struct.nullb_cmd* %36, %struct.nullb_cmd** %3, align 8
  br label %37

37:                                               ; preds = %32, %16
  %38 = load %struct.nullb_cmd*, %struct.nullb_cmd** %3, align 8
  ret %struct.nullb_cmd* %38
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.nullb_cmd* @__alloc_cmd(%struct.nullb_queue*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
