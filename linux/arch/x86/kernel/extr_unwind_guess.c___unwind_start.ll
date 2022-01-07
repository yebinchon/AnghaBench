; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_guess.c___unwind_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_guess.c___unwind_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_state = type { i32, i32, %struct.task_struct*, i32 }
%struct.task_struct = type { i32 }
%struct.pt_regs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__unwind_start(%struct.unwind_state* %0, %struct.task_struct* %1, %struct.pt_regs* %2, i64* %3) #0 {
  %5 = alloca %struct.unwind_state*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i64*, align 8
  store %struct.unwind_state* %0, %struct.unwind_state** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  store i64* %3, i64** %8, align 8
  %9 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %10 = call i32 @memset(%struct.unwind_state* %9, i32 0, i32 24)
  %11 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %12 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %13 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %12, i32 0, i32 2
  store %struct.task_struct* %11, %struct.task_struct** %13, align 8
  %14 = load i64*, i64** %8, align 8
  %15 = call i32 @PTR_ALIGN(i64* %14, i32 8)
  %16 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %17 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load i64*, i64** %8, align 8
  %19 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %20 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %19, i32 0, i32 2
  %21 = load %struct.task_struct*, %struct.task_struct** %20, align 8
  %22 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %23 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %22, i32 0, i32 0
  %24 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %25 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %24, i32 0, i32 1
  %26 = call i32 @get_stack_info(i64* %18, %struct.task_struct* %21, i32* %23, i32* %25)
  %27 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %28 = call i32 @unwind_done(%struct.unwind_state* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %4
  %31 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %32 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %31, i32 0, i32 0
  %33 = load i64*, i64** %8, align 8
  %34 = call i32 @on_stack(i32* %32, i64* %33, i32 8)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i64*, i64** %8, align 8
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @__kernel_text_address(i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36, %30
  %42 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %43 = call i32 @unwind_next_frame(%struct.unwind_state* %42)
  br label %44

44:                                               ; preds = %41, %36, %4
  ret void
}

declare dso_local i32 @memset(%struct.unwind_state*, i32, i32) #1

declare dso_local i32 @PTR_ALIGN(i64*, i32) #1

declare dso_local i32 @get_stack_info(i64*, %struct.task_struct*, i32*, i32*) #1

declare dso_local i32 @unwind_done(%struct.unwind_state*) #1

declare dso_local i32 @on_stack(i32*, i64*, i32) #1

declare dso_local i32 @__kernel_text_address(i64) #1

declare dso_local i32 @unwind_next_frame(%struct.unwind_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
