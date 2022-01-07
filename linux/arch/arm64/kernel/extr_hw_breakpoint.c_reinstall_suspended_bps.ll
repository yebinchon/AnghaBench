; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hw_breakpoint.c_reinstall_suspended_bps.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hw_breakpoint.c_reinstall_suspended_bps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.debug_info }
%struct.debug_info = type { i64, i64, i64 }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@stepping_kernel_bp = common dso_local global i32 0, align 4
@AARCH64_DBG_REG_BCR = common dso_local global i32 0, align 4
@DBG_ACTIVE_EL0 = common dso_local global i32 0, align 4
@AARCH64_DBG_REG_WCR = common dso_local global i32 0, align 4
@ARM_KERNEL_STEP_NONE = common dso_local global i32 0, align 4
@DBG_ACTIVE_EL1 = common dso_local global i32 0, align 4
@ARM_KERNEL_STEP_SUSPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reinstall_suspended_bps(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca %struct.debug_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.debug_info* %8, %struct.debug_info** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = call i32* @this_cpu_ptr(i32* @stepping_kernel_bp)
  store i32* %9, i32** %5, align 8
  %10 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %11 = call i64 @user_mode(%struct.pt_regs* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %1
  %14 = load %struct.debug_info*, %struct.debug_info** %3, align 8
  %15 = getelementptr inbounds %struct.debug_info, %struct.debug_info* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.debug_info*, %struct.debug_info** %3, align 8
  %20 = getelementptr inbounds %struct.debug_info, %struct.debug_info* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @AARCH64_DBG_REG_BCR, align 4
  %22 = load i32, i32* @DBG_ACTIVE_EL0, align 4
  %23 = call i32 @toggle_bp_registers(i32 %21, i32 %22, i32 1)
  store i32 1, i32* %4, align 4
  br label %24

24:                                               ; preds = %18, %13
  %25 = load %struct.debug_info*, %struct.debug_info** %3, align 8
  %26 = getelementptr inbounds %struct.debug_info, %struct.debug_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.debug_info*, %struct.debug_info** %3, align 8
  %31 = getelementptr inbounds %struct.debug_info, %struct.debug_info* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @AARCH64_DBG_REG_WCR, align 4
  %33 = load i32, i32* @DBG_ACTIVE_EL0, align 4
  %34 = call i32 @toggle_bp_registers(i32 %32, i32 %33, i32 1)
  store i32 1, i32* %4, align 4
  br label %35

35:                                               ; preds = %29, %24
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load %struct.debug_info*, %struct.debug_info** %3, align 8
  %40 = getelementptr inbounds %struct.debug_info, %struct.debug_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.debug_info*, %struct.debug_info** %3, align 8
  %45 = getelementptr inbounds %struct.debug_info, %struct.debug_info* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  store i32 0, i32* %4, align 4
  br label %49

46:                                               ; preds = %38
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %48 = call i32 @user_disable_single_step(%struct.TYPE_5__* %47)
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %35
  br label %83

51:                                               ; preds = %1
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ARM_KERNEL_STEP_NONE, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %51
  %57 = load i32, i32* @AARCH64_DBG_REG_BCR, align 4
  %58 = load i32, i32* @DBG_ACTIVE_EL1, align 4
  %59 = call i32 @toggle_bp_registers(i32 %57, i32 %58, i32 1)
  %60 = load i32, i32* @AARCH64_DBG_REG_WCR, align 4
  %61 = load i32, i32* @DBG_ACTIVE_EL1, align 4
  %62 = call i32 @toggle_bp_registers(i32 %60, i32 %61, i32 1)
  %63 = load %struct.debug_info*, %struct.debug_info** %3, align 8
  %64 = getelementptr inbounds %struct.debug_info, %struct.debug_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %56
  %68 = load i32, i32* @AARCH64_DBG_REG_WCR, align 4
  %69 = load i32, i32* @DBG_ACTIVE_EL0, align 4
  %70 = call i32 @toggle_bp_registers(i32 %68, i32 %69, i32 1)
  br label %71

71:                                               ; preds = %67, %56
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ARM_KERNEL_STEP_SUSPEND, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = call i32 (...) @kernel_disable_single_step()
  store i32 1, i32* %4, align 4
  br label %79

78:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %76
  %80 = load i32, i32* @ARM_KERNEL_STEP_NONE, align 4
  %81 = load i32*, i32** %5, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %51
  br label %83

83:                                               ; preds = %82, %50
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  ret i32 %87
}

declare dso_local i32* @this_cpu_ptr(i32*) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @toggle_bp_registers(i32, i32, i32) #1

declare dso_local i32 @user_disable_single_step(%struct.TYPE_5__*) #1

declare dso_local i32 @kernel_disable_single_step(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
