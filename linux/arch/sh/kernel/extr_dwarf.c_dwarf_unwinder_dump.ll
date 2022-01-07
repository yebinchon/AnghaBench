; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_dwarf.c_dwarf_unwinder_dump.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_dwarf.c_dwarf_unwinder_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i32 }
%struct.stacktrace_ops = type { i32 (i8*, i64, i32)* }
%struct.dwarf_frame = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.pt_regs*, i64*, %struct.stacktrace_ops*, i8*)* @dwarf_unwinder_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf_unwinder_dump(%struct.task_struct* %0, %struct.pt_regs* %1, i64* %2, %struct.stacktrace_ops* %3, i8* %4) #0 {
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.stacktrace_ops*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.dwarf_frame*, align 8
  %12 = alloca %struct.dwarf_frame*, align 8
  %13 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.stacktrace_ops* %3, %struct.stacktrace_ops** %9, align 8
  store i8* %4, i8** %10, align 8
  store %struct.dwarf_frame* null, %struct.dwarf_frame** %12, align 8
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %5, %33
  %15 = load i64, i64* %13, align 8
  %16 = load %struct.dwarf_frame*, %struct.dwarf_frame** %12, align 8
  %17 = call %struct.dwarf_frame* @dwarf_unwind_stack(i64 %15, %struct.dwarf_frame* %16)
  store %struct.dwarf_frame* %17, %struct.dwarf_frame** %11, align 8
  %18 = load %struct.dwarf_frame*, %struct.dwarf_frame** %12, align 8
  %19 = icmp ne %struct.dwarf_frame* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.dwarf_frame*, %struct.dwarf_frame** %12, align 8
  %22 = call i32 @dwarf_free_frame(%struct.dwarf_frame* %21)
  br label %23

23:                                               ; preds = %20, %14
  %24 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  store %struct.dwarf_frame* %24, %struct.dwarf_frame** %12, align 8
  %25 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %26 = icmp ne %struct.dwarf_frame* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %29 = getelementptr inbounds %struct.dwarf_frame, %struct.dwarf_frame* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %23
  br label %43

33:                                               ; preds = %27
  %34 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %35 = getelementptr inbounds %struct.dwarf_frame, %struct.dwarf_frame* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %13, align 8
  %37 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %9, align 8
  %38 = getelementptr inbounds %struct.stacktrace_ops, %struct.stacktrace_ops* %37, i32 0, i32 0
  %39 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %38, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call i32 %39(i8* %40, i64 %41, i32 1)
  br label %14

43:                                               ; preds = %32
  %44 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %45 = icmp ne %struct.dwarf_frame* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.dwarf_frame*, %struct.dwarf_frame** %11, align 8
  %48 = call i32 @dwarf_free_frame(%struct.dwarf_frame* %47)
  br label %49

49:                                               ; preds = %46, %43
  ret void
}

declare dso_local %struct.dwarf_frame* @dwarf_unwind_stack(i64, %struct.dwarf_frame*) #1

declare dso_local i32 @dwarf_free_frame(%struct.dwarf_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
