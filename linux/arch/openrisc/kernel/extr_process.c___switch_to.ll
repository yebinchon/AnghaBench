; ModuleID = '/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_process.c___switch_to.c'
source_filename = "/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_process.c___switch_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i32 }
%struct.task_struct = type { %struct.thread_info* }
%struct.TYPE_2__ = type { %struct.task_struct* }

@lwa_flag = common dso_local global i64 0, align 8
@current_thread_info_set = common dso_local global %struct.thread_info** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.task_struct* @__switch_to(%struct.task_struct* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.thread_info*, align 8
  %7 = alloca %struct.thread_info*, align 8
  %8 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @local_irq_save(i64 %9)
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 0
  %13 = load %struct.thread_info*, %struct.thread_info** %12, align 8
  store %struct.thread_info* %13, %struct.thread_info** %6, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 0
  %16 = load %struct.thread_info*, %struct.thread_info** %15, align 8
  store %struct.thread_info* %16, %struct.thread_info** %7, align 8
  store i64 0, i64* @lwa_flag, align 8
  %17 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %18 = load %struct.thread_info**, %struct.thread_info*** @current_thread_info_set, align 8
  %19 = call i64 (...) @smp_processor_id()
  %20 = getelementptr inbounds %struct.thread_info*, %struct.thread_info** %18, i64 %19
  store %struct.thread_info* %17, %struct.thread_info** %20, align 8
  %21 = load %struct.thread_info*, %struct.thread_info** %7, align 8
  %22 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %23 = call %struct.TYPE_2__* @_switch(%struct.thread_info* %21, %struct.thread_info* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.task_struct*, %struct.task_struct** %24, align 8
  store %struct.task_struct* %25, %struct.task_struct** %5, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @local_irq_restore(i64 %26)
  %28 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  ret %struct.task_struct* %28
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local %struct.TYPE_2__* @_switch(%struct.thread_info*, %struct.thread_info*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
