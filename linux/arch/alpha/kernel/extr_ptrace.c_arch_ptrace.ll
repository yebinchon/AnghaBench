; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_ptrace.c_arch_ptrace.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_ptrace.c_arch_ptrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@FOLL_FORCE = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@DBG_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"peek $%lu->%#lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"poke $%lu<-%#lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_ptrace(%struct.task_struct* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* %6, align 8
  switch i64 %12, label %51 [
    i64 132, label %13
    i64 133, label %13
    i64 131, label %26
    i64 129, label %36
    i64 130, label %36
    i64 128, label %41
  ]

13:                                               ; preds = %4, %4
  %14 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* @FOLL_FORCE, align 4
  %17 = call i64 @ptrace_access_vm(%struct.task_struct* %14, i64 %15, i64* %9, i32 8, i32 %16)
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* @EIO, align 8
  %19 = sub nsw i64 0, %18
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %20, 8
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %57

23:                                               ; preds = %13
  %24 = call i32 (...) @force_successful_syscall_return()
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %11, align 8
  br label %57

26:                                               ; preds = %4
  %27 = call i32 (...) @force_successful_syscall_return()
  %28 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @get_reg(%struct.task_struct* %28, i64 %29)
  store i64 %30, i64* %11, align 8
  %31 = load i32, i32* @DBG_MEM, align 4
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %11, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @DBG(i32 %31, i8* %34)
  br label %57

36:                                               ; preds = %4, %4
  %37 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @generic_ptrace_pokedata(%struct.task_struct* %37, i64 %38, i64 %39)
  store i64 %40, i64* %11, align 8
  br label %57

41:                                               ; preds = %4
  %42 = load i32, i32* @DBG_MEM, align 4
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @DBG(i32 %42, i8* %45)
  %47 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i64 @put_reg(%struct.task_struct* %47, i64 %48, i64 %49)
  store i64 %50, i64* %11, align 8
  br label %57

51:                                               ; preds = %4
  %52 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @ptrace_request(%struct.task_struct* %52, i64 %53, i64 %54, i64 %55)
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %51, %41, %36, %26, %23, %22
  %58 = load i64, i64* %11, align 8
  ret i64 %58
}

declare dso_local i64 @ptrace_access_vm(%struct.task_struct*, i64, i64*, i32, i32) #1

declare dso_local i32 @force_successful_syscall_return(...) #1

declare dso_local i64 @get_reg(%struct.task_struct*, i64) #1

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i64 @generic_ptrace_pokedata(%struct.task_struct*, i64, i64) #1

declare dso_local i64 @put_reg(%struct.task_struct*, i64, i64) #1

declare dso_local i64 @ptrace_request(%struct.task_struct*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
