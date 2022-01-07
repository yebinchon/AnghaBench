; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_hw_breakpoint.c_flush_ptrace_hw_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_hw_breakpoint.c_flush_ptrace_hw_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.thread_struct }
%struct.thread_struct = type { i32**, i32** }

@XCHAL_NUM_IBREAK = common dso_local global i32 0, align 4
@XCHAL_NUM_DBREAK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_ptrace_hw_breakpoint(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i32 0, i32 0
  store %struct.thread_struct* %6, %struct.thread_struct** %4, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %36, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @XCHAL_NUM_IBREAK, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = load %struct.thread_struct*, %struct.thread_struct** %4, align 8
  %13 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %12, i32 0, i32 1
  %14 = load i32**, i32*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %11
  %21 = load %struct.thread_struct*, %struct.thread_struct** %4, align 8
  %22 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %21, i32 0, i32 1
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @unregister_hw_breakpoint(i32* %27)
  %29 = load %struct.thread_struct*, %struct.thread_struct** %4, align 8
  %30 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %20, %11
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %7

39:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %69, %39
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @XCHAL_NUM_DBREAK, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %40
  %45 = load %struct.thread_struct*, %struct.thread_struct** %4, align 8
  %46 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %45, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %44
  %54 = load %struct.thread_struct*, %struct.thread_struct** %4, align 8
  %55 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @unregister_hw_breakpoint(i32* %60)
  %62 = load %struct.thread_struct*, %struct.thread_struct** %4, align 8
  %63 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %62, i32 0, i32 0
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %53, %44
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %40

72:                                               ; preds = %40
  ret void
}

declare dso_local i32 @unregister_hw_breakpoint(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
