; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ptrace_64.c_regwindow64_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_ptrace_64.c_regwindow64_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pt_regs = type { i64* }
%struct.reg_window = type { i32*, i32* }
%struct.reg_window32 = type { i32*, i32* }

@UREG_I6 = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@STACK_BIAS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.pt_regs*, %struct.reg_window*)* @regwindow64_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regwindow64_set(%struct.task_struct* %0, %struct.pt_regs* %1, %struct.reg_window* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca %struct.reg_window*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.reg_window32, align 8
  %10 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %6, align 8
  store %struct.reg_window* %2, %struct.reg_window** %7, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @UREG_I6, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @test_thread_64bit_stack(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %69, label %20

20:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load %struct.reg_window*, %struct.reg_window** %7, align 8
  %26 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %9, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %31, i32* %36, align 4
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %21

40:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %57, %40
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 8
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load %struct.reg_window*, %struct.reg_window** %7, align 8
  %46 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %9, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %51, i32* %56, align 4
  br label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %41

60:                                               ; preds = %41
  %61 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i64 @set_to_target(%struct.task_struct* %61, i64 %62, %struct.reg_window32* %9, i32 16)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @EFAULT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %84

68:                                               ; preds = %60
  br label %83

69:                                               ; preds = %3
  %70 = load i64, i64* @STACK_BIAS, align 8
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %8, align 8
  %73 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.reg_window*, %struct.reg_window** %7, align 8
  %76 = bitcast %struct.reg_window* %75 to %struct.reg_window32*
  %77 = call i64 @set_to_target(%struct.task_struct* %73, i64 %74, %struct.reg_window32* %76, i32 16)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load i32, i32* @EFAULT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %84

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82, %68
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %79, %65
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @test_thread_64bit_stack(i64) #1

declare dso_local i64 @set_to_target(%struct.task_struct*, i64, %struct.reg_window32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
