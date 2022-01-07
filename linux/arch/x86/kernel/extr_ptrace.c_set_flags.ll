; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ptrace.c_set_flags.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ptrace.c_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i64 }

@X86_EFLAGS_TF = common dso_local global i64 0, align 8
@TIF_FORCED_TF = common dso_local global i32 0, align 4
@FLAG_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i64)* @set_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_flags(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pt_regs*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %6)
  store %struct.pt_regs* %7, %struct.pt_regs** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @X86_EFLAGS_TF, align 8
  %10 = and i64 %8, %9
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %14 = load i32, i32* @TIF_FORCED_TF, align 4
  %15 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %13, i32 %14)
  br label %26

16:                                               ; preds = %2
  %17 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %18 = load i32, i32* @TIF_FORCED_TF, align 4
  %19 = call i64 @test_tsk_thread_flag(%struct.task_struct* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i64, i64* @X86_EFLAGS_TF, align 8
  %23 = load i64, i64* %4, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %4, align 8
  br label %25

25:                                               ; preds = %21, %16
  br label %26

26:                                               ; preds = %25, %12
  %27 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @FLAG_MASK, align 8
  %31 = xor i64 %30, -1
  %32 = and i64 %29, %31
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @FLAG_MASK, align 8
  %35 = and i64 %33, %34
  %36 = or i64 %32, %35
  %37 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  ret i32 0
}

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i64 @test_tsk_thread_flag(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
