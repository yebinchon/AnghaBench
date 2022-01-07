; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ptrace.c_ptrace_set_debugreg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ptrace.c_ptrace_set_debugreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.thread_struct }
%struct.thread_struct = type { i64, i64 }

@EIO = common dso_local global i32 0, align 4
@HBP_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32, i64)* @ptrace_set_debugreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_set_debugreg(%struct.task_struct* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.thread_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  store %struct.thread_struct* %10, %struct.thread_struct** %7, align 8
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @HBP_NUM, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @ptrace_set_breakpoint_addr(%struct.task_struct* %17, i32 %18, i64 %19)
  store i32 %20, i32* %8, align 4
  br label %44

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 6
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.thread_struct*, %struct.thread_struct** %7, align 8
  %27 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  store i32 0, i32* %8, align 4
  br label %43

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 7
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @ptrace_write_dr7(%struct.task_struct* %32, i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.thread_struct*, %struct.thread_struct** %7, align 8
  %40 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %31
  br label %42

42:                                               ; preds = %41, %28
  br label %43

43:                                               ; preds = %42, %24
  br label %44

44:                                               ; preds = %43, %16
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local i32 @ptrace_set_breakpoint_addr(%struct.task_struct*, i32, i64) #1

declare dso_local i32 @ptrace_write_dr7(%struct.task_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
