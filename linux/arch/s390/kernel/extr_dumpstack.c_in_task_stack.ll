; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_dumpstack.c_in_task_stack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_dumpstack.c_in_task_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.stack_info = type { i32 }

@STACK_TYPE_TASK = common dso_local global i32 0, align 4
@THREAD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.task_struct*, %struct.stack_info*)* @in_task_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_task_stack(i64 %0, %struct.task_struct* %1, %struct.stack_info* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.stack_info*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store %struct.stack_info* %2, %struct.stack_info** %6, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %9 = call i64 @task_stack_page(%struct.task_struct* %8)
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.stack_info*, %struct.stack_info** %6, align 8
  %12 = load i32, i32* @STACK_TYPE_TASK, align 4
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @THREAD_SIZE, align 8
  %16 = add i64 %14, %15
  %17 = call i32 @in_stack(i64 %10, %struct.stack_info* %11, i32 %12, i64 %13, i64 %16)
  ret i32 %17
}

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

declare dso_local i32 @in_stack(i64, %struct.stack_info*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
