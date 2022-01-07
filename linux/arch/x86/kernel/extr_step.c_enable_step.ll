; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_step.c_enable_step.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_step.c_enable_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@TIF_BLOCKSTEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32)* @enable_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_step(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %6 = call i64 @enable_single_step(%struct.task_struct* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %13 = call i32 @set_task_blockstep(%struct.task_struct* %12, i32 1)
  br label %23

14:                                               ; preds = %8, %2
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = load i32, i32* @TIF_BLOCKSTEP, align 4
  %17 = call i64 @test_tsk_thread_flag(%struct.task_struct* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %21 = call i32 @set_task_blockstep(%struct.task_struct* %20, i32 0)
  br label %22

22:                                               ; preds = %19, %14
  br label %23

23:                                               ; preds = %22, %11
  ret void
}

declare dso_local i64 @enable_single_step(%struct.task_struct*) #1

declare dso_local i32 @set_task_blockstep(%struct.task_struct*, i32) #1

declare dso_local i64 @test_tsk_thread_flag(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
