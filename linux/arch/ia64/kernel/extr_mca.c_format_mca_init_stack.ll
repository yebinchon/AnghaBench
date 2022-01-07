; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_mca.c_format_mca_init_stack.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_mca.c_format_mca_init_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, i32, %struct.task_struct*, %struct.task_struct*, %struct.task_struct*, i32, i32, i32, %struct.thread_info* }
%struct.thread_info = type { i32, i32, %struct.task_struct*, i32 }

@KERNEL_STACK_SIZE = common dso_local global i32 0, align 4
@_TIF_MCA_INIT = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i32)* @format_mca_init_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_mca_init_stack(i8* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca %struct.thread_info*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  %14 = bitcast i8* %13 to %struct.task_struct*
  store %struct.task_struct* %14, %struct.task_struct** %9, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %16 = load i32, i32* @KERNEL_STACK_SIZE, align 4
  %17 = call i32 @memset(%struct.task_struct* %15, i32 0, i32 %16)
  %18 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %19 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %18)
  store %struct.thread_info* %19, %struct.thread_info** %10, align 8
  %20 = load i32, i32* @_TIF_MCA_INIT, align 4
  %21 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %22 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %24 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %26 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %27 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %26, i32 0, i32 2
  store %struct.task_struct* %25, %struct.task_struct** %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %30 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.thread_info*, %struct.thread_info** %10, align 8
  %32 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 9
  store %struct.thread_info* %31, %struct.thread_info** %33, align 8
  %34 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %35 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %36 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %39 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %38, i32 0, i32 7
  %40 = call i32 @cpumask_set_cpu(i32 %37, i32* %39)
  %41 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 6
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %45 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %46 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %45, i32 0, i32 3
  store %struct.task_struct* %44, %struct.task_struct** %46, align 8
  %47 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %48 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %47, i32 0, i32 4
  store %struct.task_struct* %44, %struct.task_struct** %48, align 8
  %49 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %50 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %49, i32 0, i32 5
  store %struct.task_struct* %44, %struct.task_struct** %50, align 8
  %51 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %52 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %51, i32 0, i32 2
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %55 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %54, i32 0, i32 1
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %58 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @strncpy(i32 %59, i8* %60, i32 3)
  ret void
}

declare dso_local i32 @memset(%struct.task_struct*, i32, i32) #1

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
