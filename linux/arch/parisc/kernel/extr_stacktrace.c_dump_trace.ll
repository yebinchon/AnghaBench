; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_stacktrace.c_dump_trace.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_stacktrace.c_dump_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.stack_trace = type { i64, i64, i64* }
%struct.unwind_frame_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.stack_trace*)* @dump_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_trace(%struct.task_struct* %0, %struct.stack_trace* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.stack_trace*, align 8
  %5 = alloca %struct.unwind_frame_info, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.stack_trace* %1, %struct.stack_trace** %4, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = call i32 @unwind_frame_init_task(%struct.unwind_frame_info* %5, %struct.task_struct* %6, i32* null)
  %8 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %9 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %42, %2
  %11 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %12 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %15 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %10
  %19 = call i64 @unwind_once(%struct.unwind_frame_info* %5)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %5, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %18
  br label %43

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %5, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @__kernel_text_address(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.unwind_frame_info, %struct.unwind_frame_info* %5, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %35 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %38 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = getelementptr inbounds i64, i64* %36, i64 %39
  store i64 %33, i64* %41, align 8
  br label %42

42:                                               ; preds = %31, %26
  br label %10

43:                                               ; preds = %25, %10
  ret void
}

declare dso_local i32 @unwind_frame_init_task(%struct.unwind_frame_info*, %struct.task_struct*, i32*) #1

declare dso_local i64 @unwind_once(%struct.unwind_frame_info*) #1

declare dso_local i64 @__kernel_text_address(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
