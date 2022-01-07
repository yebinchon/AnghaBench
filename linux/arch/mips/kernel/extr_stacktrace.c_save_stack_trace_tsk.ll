; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_stacktrace.c_save_stack_trace_tsk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_stacktrace.c_save_stack_trace_tsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.stack_trace = type { i32, i64 }
%struct.pt_regs = type { i32, i64* }

@current = common dso_local global %struct.task_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_stack_trace_tsk(%struct.task_struct* %0, %struct.stack_trace* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.stack_trace*, align 8
  %5 = alloca %struct.pt_regs, align 8
  %6 = alloca %struct.pt_regs*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.stack_trace* %1, %struct.stack_trace** %4, align 8
  store %struct.pt_regs* %5, %struct.pt_regs** %6, align 8
  %7 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %8 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %13 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i1 [ true, %2 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %22 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %23 = icmp ne %struct.task_struct* %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %17
  %25 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 29
  store i64 %28, i64* %32, align 8
  %33 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 31
  store i64 0, i64* %36, align 8
  %37 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %42 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %46

43:                                               ; preds = %17
  %44 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %45 = call i32 @prepare_frametrace(%struct.pt_regs* %44)
  br label %46

46:                                               ; preds = %43, %24
  %47 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %48 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %49 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %50 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %51 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %52 = icmp eq %struct.task_struct* %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @save_context_stack(%struct.stack_trace* %47, %struct.task_struct* %48, %struct.pt_regs* %49, i32 %53)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @prepare_frametrace(%struct.pt_regs*) #1

declare dso_local i32 @save_context_stack(%struct.stack_trace*, %struct.task_struct*, %struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
