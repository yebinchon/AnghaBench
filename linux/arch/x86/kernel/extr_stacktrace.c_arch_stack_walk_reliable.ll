; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_stacktrace.c_arch_stack_walk_reliable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_stacktrace.c_arch_stack_walk_reliable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.unwind_state = type { i32 }
%struct.pt_regs = type { i32 }

@CONFIG_FRAME_POINTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PF_KTHREAD = common dso_local global i32 0, align 4
@PF_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_stack_walk_reliable(i32 (i8*, i64, i32)* %0, i8* %1, %struct.task_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32 (i8*, i64, i32)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.unwind_state, align 4
  %9 = alloca %struct.pt_regs*, align 8
  %10 = alloca i64, align 8
  store i32 (i8*, i64, i32)* %0, i32 (i8*, i64, i32)** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.task_struct* %2, %struct.task_struct** %7, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %12 = call i32 @unwind_start(%struct.unwind_state* %8, %struct.task_struct* %11, i32* null, i32* null)
  br label %13

13:                                               ; preds = %56, %3
  %14 = call i32 @unwind_done(%struct.unwind_state* %8)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = call i64 @unwind_error(%struct.unwind_state* %8)
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  br i1 %21, label %22, label %58

22:                                               ; preds = %20
  %23 = call %struct.pt_regs* @unwind_get_entry_regs(%struct.unwind_state* %8, i32* null)
  store %struct.pt_regs* %23, %struct.pt_regs** %9, align 8
  %24 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %25 = icmp ne %struct.pt_regs* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %28 = call i64 @user_mode(%struct.pt_regs* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %77

31:                                               ; preds = %26
  %32 = load i32, i32* @CONFIG_FRAME_POINTER, align 4
  %33 = call i64 @IS_ENABLED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %77

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %22
  %40 = call i64 @unwind_get_return_address(%struct.unwind_state* %8)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %77

46:                                               ; preds = %39
  %47 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 %47(i8* %48, i64 %49, i32 0)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %77

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55
  %57 = call i32 @unwind_next_frame(%struct.unwind_state* %8)
  br label %13

58:                                               ; preds = %20
  %59 = call i64 @unwind_error(%struct.unwind_state* %8)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %77

64:                                               ; preds = %58
  %65 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %66 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PF_KTHREAD, align 4
  %69 = load i32, i32* @PF_IDLE, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %64
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %77

76:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %73, %61, %52, %43, %35, %30
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @unwind_start(%struct.unwind_state*, %struct.task_struct*, i32*, i32*) #1

declare dso_local i32 @unwind_done(%struct.unwind_state*) #1

declare dso_local i64 @unwind_error(%struct.unwind_state*) #1

declare dso_local %struct.pt_regs* @unwind_get_entry_regs(%struct.unwind_state*, i32*) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @unwind_get_return_address(%struct.unwind_state*) #1

declare dso_local i32 @unwind_next_frame(%struct.unwind_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
