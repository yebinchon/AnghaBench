; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_stacktrace.c_dump_trace.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_stacktrace.c_dump_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pt_regs* }
%struct.pt_regs = type { i32 }
%struct.stacktrace_ops = type { i32 (i8*, i64, i32)* }
%struct.stack_frame = type { %struct.stack_frame* }

@THREAD_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_trace(%struct.task_struct* %0, %struct.stacktrace_ops* %1, i8* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.stacktrace_ops*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.pt_regs*, align 8
  %12 = alloca %struct.stack_frame*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.stacktrace_ops* %1, %struct.stacktrace_ops** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.pt_regs*, %struct.pt_regs** %15, align 8
  store %struct.pt_regs* %16, %struct.pt_regs** %11, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %18 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %19 = call i64 @get_frame_pointer(%struct.task_struct* %17, %struct.pt_regs* %18)
  store i64 %19, i64* %9, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %21 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %22 = call i64* @get_stack_pointer(%struct.task_struct* %20, %struct.pt_regs* %21)
  store i64* %22, i64** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = inttoptr i64 %23 to %struct.stack_frame*
  store %struct.stack_frame* %24, %struct.stack_frame** %12, align 8
  br label %25

25:                                               ; preds = %65, %3
  %26 = load i64*, i64** %8, align 8
  %27 = ptrtoint i64* %26 to i64
  %28 = load i32, i32* @THREAD_SIZE, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = and i64 %27, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %68

33:                                               ; preds = %25
  %34 = load i64*, i64** %8, align 8
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @__kernel_text_address(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  %40 = load i64*, i64** %8, align 8
  %41 = ptrtoint i64* %40 to i64
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %42, 8
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.stack_frame*, %struct.stack_frame** %12, align 8
  %47 = icmp ne %struct.stack_frame* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.stack_frame*, %struct.stack_frame** %12, align 8
  %50 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %49, i32 0, i32 0
  %51 = load %struct.stack_frame*, %struct.stack_frame** %50, align 8
  br label %53

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi %struct.stack_frame* [ %51, %48 ], [ null, %52 ]
  store %struct.stack_frame* %54, %struct.stack_frame** %12, align 8
  %55 = load %struct.stack_frame*, %struct.stack_frame** %12, align 8
  %56 = ptrtoint %struct.stack_frame* %55 to i64
  store i64 %56, i64* %9, align 8
  store i32 1, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %39
  %58 = load %struct.stacktrace_ops*, %struct.stacktrace_ops** %5, align 8
  %59 = getelementptr inbounds %struct.stacktrace_ops, %struct.stacktrace_ops* %58, i32 0, i32 0
  %60 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %59, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 %60(i8* %61, i64 %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %33
  %66 = load i64*, i64** %8, align 8
  %67 = getelementptr inbounds i64, i64* %66, i32 1
  store i64* %67, i64** %8, align 8
  br label %25

68:                                               ; preds = %25
  ret void
}

declare dso_local i64 @get_frame_pointer(%struct.task_struct*, %struct.pt_regs*) #1

declare dso_local i64* @get_stack_pointer(%struct.task_struct*, %struct.pt_regs*) #1

declare dso_local i64 @__kernel_text_address(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
