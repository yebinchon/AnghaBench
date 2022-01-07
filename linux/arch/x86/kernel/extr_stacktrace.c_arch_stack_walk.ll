; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_stacktrace.c_arch_stack_walk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_stacktrace.c_arch_stack_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i64 }
%struct.unwind_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_stack_walk(i32 (i8*, i64, i32)* %0, i8* %1, %struct.task_struct* %2, %struct.pt_regs* %3) #0 {
  %5 = alloca i32 (i8*, i64, i32)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca %struct.unwind_state, align 4
  %10 = alloca i64, align 8
  store i32 (i8*, i64, i32)* %0, i32 (i8*, i64, i32)** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.task_struct* %2, %struct.task_struct** %7, align 8
  store %struct.pt_regs* %3, %struct.pt_regs** %8, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %12 = icmp ne %struct.pt_regs* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 %14(i8* %15, i64 %18, i32 0)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  br label %44

22:                                               ; preds = %13, %4
  %23 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %24 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %25 = call i32 @unwind_start(%struct.unwind_state* %9, %struct.task_struct* %23, %struct.pt_regs* %24, i32* null)
  br label %26

26:                                               ; preds = %42, %22
  %27 = call i32 @unwind_done(%struct.unwind_state* %9)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = call i64 @unwind_get_return_address(%struct.unwind_state* %9)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 %35(i8* %36, i64 %37, i32 0)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34, %30
  br label %44

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41
  %43 = call i32 @unwind_next_frame(%struct.unwind_state* %9)
  br label %26

44:                                               ; preds = %21, %40, %26
  ret void
}

declare dso_local i32 @unwind_start(%struct.unwind_state*, %struct.task_struct*, %struct.pt_regs*, i32*) #1

declare dso_local i32 @unwind_done(%struct.unwind_state*) #1

declare dso_local i64 @unwind_get_return_address(%struct.unwind_state*) #1

declare dso_local i32 @unwind_next_frame(%struct.unwind_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
