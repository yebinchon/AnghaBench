; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hw_breakpoint.c_breakpoint_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hw_breakpoint.c_breakpoint_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.debug_info }
%struct.debug_info = type { i32, i32, i64 }
%struct.pt_regs = type { i32 }
%struct.perf_event = type { i32 }
%struct.arch_hw_breakpoint_ctrl = type { i32 }
%struct.TYPE_7__ = type { i32 }

@bp_on_reg = common dso_local global i32* null, align 8
@current = common dso_local global %struct.TYPE_6__* null, align 8
@core_num_brps = common dso_local global i32 0, align 4
@AARCH64_DBG_REG_BVR = common dso_local global i32 0, align 4
@AARCH64_DBG_REG_BCR = common dso_local global i32 0, align 4
@DBG_ACTIVE_EL0 = common dso_local global i32 0, align 4
@TIF_SINGLESTEP = common dso_local global i32 0, align 4
@DBG_ACTIVE_EL1 = common dso_local global i32 0, align 4
@stepping_kernel_bp = common dso_local global i32 0, align 4
@ARM_KERNEL_STEP_NONE = common dso_local global i32 0, align 4
@ARM_KERNEL_STEP_SUSPEND = common dso_local global i32 0, align 4
@ARM_KERNEL_STEP_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, %struct.pt_regs*)* @breakpoint_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @breakpoint_handler(i64 %0, i32 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.perf_event*, align 8
  %15 = alloca %struct.perf_event**, align 8
  %16 = alloca %struct.debug_info*, align 8
  %17 = alloca %struct.arch_hw_breakpoint_ctrl, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32*, i32** @bp_on_reg, align 8
  %19 = call i8* @this_cpu_ptr(i32* %18)
  %20 = bitcast i8* %19 to %struct.perf_event**
  store %struct.perf_event** %20, %struct.perf_event*** %15, align 8
  %21 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %22 = call i32 @instruction_pointer(%struct.pt_regs* %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store %struct.debug_info* %25, %struct.debug_info** %16, align 8
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %79, %3
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @core_num_brps, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %82

30:                                               ; preds = %26
  %31 = call i32 (...) @rcu_read_lock()
  %32 = load %struct.perf_event**, %struct.perf_event*** %15, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %32, i64 %34
  %36 = load %struct.perf_event*, %struct.perf_event** %35, align 8
  store %struct.perf_event* %36, %struct.perf_event** %14, align 8
  %37 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %38 = icmp eq %struct.perf_event* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %77

40:                                               ; preds = %30
  %41 = load i32, i32* @AARCH64_DBG_REG_BVR, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i8* @read_wb_reg(i32 %41, i32 %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %12, align 4
  %47 = and i32 %46, -4
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %77

50:                                               ; preds = %40
  %51 = load i32, i32* @AARCH64_DBG_REG_BCR, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i8* @read_wb_reg(i32 %51, i32 %52)
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @decode_ctrl_reg(i8* %54, %struct.arch_hw_breakpoint_ctrl* %17)
  %56 = load i32, i32* %12, align 4
  %57 = and i32 %56, 3
  %58 = shl i32 1, %57
  %59 = getelementptr inbounds %struct.arch_hw_breakpoint_ctrl, %struct.arch_hw_breakpoint_ctrl* %17, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %50
  br label %77

64:                                               ; preds = %50
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %67 = call %struct.TYPE_7__* @counter_arch_bp(%struct.perf_event* %66)
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %70 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %71 = call i32 @perf_bp_event(%struct.perf_event* %69, %struct.pt_regs* %70)
  %72 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %73 = call i64 @is_default_overflow_handler(%struct.perf_event* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  store i32 1, i32* %9, align 4
  br label %76

76:                                               ; preds = %75, %64
  br label %77

77:                                               ; preds = %76, %63, %49, %39
  %78 = call i32 (...) @rcu_read_unlock()
  br label %79

79:                                               ; preds = %77
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %26

82:                                               ; preds = %26
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %136

86:                                               ; preds = %82
  %87 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %88 = call i64 @user_mode(%struct.pt_regs* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %86
  %91 = load %struct.debug_info*, %struct.debug_info** %16, align 8
  %92 = getelementptr inbounds %struct.debug_info, %struct.debug_info* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load i32, i32* @AARCH64_DBG_REG_BCR, align 4
  %94 = load i32, i32* @DBG_ACTIVE_EL0, align 4
  %95 = call i32 @toggle_bp_registers(i32 %93, i32 %94, i32 0)
  %96 = load %struct.debug_info*, %struct.debug_info** %16, align 8
  %97 = getelementptr inbounds %struct.debug_info, %struct.debug_info* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  store i32 0, i32* %4, align 4
  br label %136

101:                                              ; preds = %90
  %102 = load i32, i32* @TIF_SINGLESTEP, align 4
  %103 = call i64 @test_thread_flag(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load %struct.debug_info*, %struct.debug_info** %16, align 8
  %107 = getelementptr inbounds %struct.debug_info, %struct.debug_info* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  br label %111

108:                                              ; preds = %101
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %110 = call i32 @user_enable_single_step(%struct.TYPE_6__* %109)
  br label %111

111:                                              ; preds = %108, %105
  br label %135

112:                                              ; preds = %86
  %113 = load i32, i32* @AARCH64_DBG_REG_BCR, align 4
  %114 = load i32, i32* @DBG_ACTIVE_EL1, align 4
  %115 = call i32 @toggle_bp_registers(i32 %113, i32 %114, i32 0)
  %116 = call i8* @this_cpu_ptr(i32* @stepping_kernel_bp)
  %117 = bitcast i8* %116 to i32*
  store i32* %117, i32** %10, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @ARM_KERNEL_STEP_NONE, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  store i32 0, i32* %4, align 4
  br label %136

123:                                              ; preds = %112
  %124 = call i64 (...) @kernel_active_single_step()
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %123
  %127 = load i32, i32* @ARM_KERNEL_STEP_SUSPEND, align 4
  %128 = load i32*, i32** %10, align 8
  store i32 %127, i32* %128, align 4
  br label %134

129:                                              ; preds = %123
  %130 = load i32, i32* @ARM_KERNEL_STEP_ACTIVE, align 4
  %131 = load i32*, i32** %10, align 8
  store i32 %130, i32* %131, align 4
  %132 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %133 = call i32 @kernel_enable_single_step(%struct.pt_regs* %132)
  br label %134

134:                                              ; preds = %129, %126
  br label %135

135:                                              ; preds = %134, %111
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %122, %100, %85
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i8* @this_cpu_ptr(i32*) #1

declare dso_local i32 @instruction_pointer(%struct.pt_regs*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @read_wb_reg(i32, i32) #1

declare dso_local i32 @decode_ctrl_reg(i8*, %struct.arch_hw_breakpoint_ctrl*) #1

declare dso_local %struct.TYPE_7__* @counter_arch_bp(%struct.perf_event*) #1

declare dso_local i32 @perf_bp_event(%struct.perf_event*, %struct.pt_regs*) #1

declare dso_local i64 @is_default_overflow_handler(%struct.perf_event*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @toggle_bp_registers(i32, i32, i32) #1

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i32 @user_enable_single_step(%struct.TYPE_6__*) #1

declare dso_local i64 @kernel_active_single_step(...) #1

declare dso_local i32 @kernel_enable_single_step(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
