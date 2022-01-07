; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/kernel/extr_perf_callchain.c_unwind_frame_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/kernel/extr_perf_callchain.c_unwind_frame_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stackframe = type { i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@TASK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stackframe*)* @unwind_frame_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unwind_frame_kernel(%struct.stackframe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stackframe*, align 8
  %4 = alloca i32, align 4
  store %struct.stackframe* %0, %struct.stackframe** %3, align 8
  %5 = load %struct.stackframe*, %struct.stackframe** %3, align 8
  %6 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i8*
  %10 = call i64 @kstack_end(i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EPERM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %52

15:                                               ; preds = %1
  %16 = load %struct.stackframe*, %struct.stackframe** %3, align 8
  %17 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 3
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.stackframe*, %struct.stackframe** %3, align 8
  %23 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TASK_SIZE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %15
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %52

30:                                               ; preds = %21
  %31 = load %struct.stackframe*, %struct.stackframe** %3, align 8
  %32 = load %struct.stackframe*, %struct.stackframe** %3, align 8
  %33 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to %struct.stackframe*
  %37 = bitcast %struct.stackframe* %31 to i8*
  %38 = bitcast %struct.stackframe* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 8, i1 false)
  %39 = load %struct.stackframe*, %struct.stackframe** %3, align 8
  %40 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @__kernel_text_address(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  %45 = load %struct.stackframe*, %struct.stackframe** %3, align 8
  %46 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ftrace_graph_ret_addr(i32* null, i32* %4, i32 %47, i32* null)
  %49 = load %struct.stackframe*, %struct.stackframe** %3, align 8
  %50 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %44, %30
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %27, %12
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @kstack_end(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @__kernel_text_address(i32) #1

declare dso_local i32 @ftrace_graph_ret_addr(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
