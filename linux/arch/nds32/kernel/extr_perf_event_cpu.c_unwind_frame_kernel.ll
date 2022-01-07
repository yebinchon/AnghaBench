; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_unwind_frame_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_unwind_frame_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stackframe = type { i64, i64, i64* }

@tsk = common dso_local global i32* null, align 8
@EPERM = common dso_local global i32 0, align 4
@FP_OFFSET = common dso_local global i64 0, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stackframe*)* @unwind_frame_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unwind_frame_kernel(%struct.stackframe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stackframe*, align 8
  %4 = alloca i32, align 4
  store %struct.stackframe* %0, %struct.stackframe** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.stackframe*, %struct.stackframe** %3, align 8
  %6 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %5, i32 0, i32 2
  %7 = load i64*, i64** %6, align 8
  %8 = bitcast i64* %7 to i8*
  %9 = call i32 @kstack_end(i8* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %40, label %11

11:                                               ; preds = %1
  %12 = load %struct.stackframe*, %struct.stackframe** %3, align 8
  %13 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %12, i32 0, i32 2
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.stackframe*, %struct.stackframe** %3, align 8
  %18 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load %struct.stackframe*, %struct.stackframe** %3, align 8
  %20 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @__kernel_text_address(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %11
  %25 = load i32*, i32** @tsk, align 8
  %26 = load %struct.stackframe*, %struct.stackframe** %3, align 8
  %27 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i8* @ftrace_graph_ret_addr(i32* %25, i32* %4, i64 %28, i32* null)
  %30 = ptrtoint i8* %29 to i64
  %31 = load %struct.stackframe*, %struct.stackframe** %3, align 8
  %32 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %24, %11
  %34 = load %struct.stackframe*, %struct.stackframe** %3, align 8
  %35 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = load %struct.stackframe*, %struct.stackframe** %3, align 8
  %39 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %38, i32 0, i32 2
  store i64* %37, i64** %39, align 8
  store i32 0, i32* %2, align 4
  br label %43

40:                                               ; preds = %1
  %41 = load i32, i32* @EPERM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %33
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @kstack_end(i8*) #1

declare dso_local i64 @__kernel_text_address(i64) #1

declare dso_local i8* @ftrace_graph_ret_addr(i32*, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
