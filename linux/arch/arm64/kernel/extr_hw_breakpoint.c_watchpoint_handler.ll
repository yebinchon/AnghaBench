; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hw_breakpoint.c_watchpoint_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hw_breakpoint.c_watchpoint_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.debug_info }
%struct.debug_info = type { i32, i32, i64 }
%struct.pt_regs = type { i32 }
%struct.perf_event = type { i32 }
%struct.arch_hw_breakpoint = type { i64 }
%struct.arch_hw_breakpoint_ctrl = type { i32 }

@wp_on_reg = common dso_local global i32* null, align 8
@current = common dso_local global %struct.TYPE_5__* null, align 8
@core_num_wrps = common dso_local global i32 0, align 4
@AARCH64_ESR_ACCESS_MASK = common dso_local global i32 0, align 4
@HW_BREAKPOINT_W = common dso_local global i32 0, align 4
@HW_BREAKPOINT_R = common dso_local global i32 0, align 4
@AARCH64_DBG_REG_WVR = common dso_local global i32 0, align 4
@AARCH64_DBG_REG_WCR = common dso_local global i32 0, align 4
@DBG_ACTIVE_EL0 = common dso_local global i32 0, align 4
@TIF_SINGLESTEP = common dso_local global i32 0, align 4
@DBG_ACTIVE_EL1 = common dso_local global i32 0, align 4
@stepping_kernel_bp = common dso_local global i32 0, align 4
@ARM_KERNEL_STEP_NONE = common dso_local global i32 0, align 4
@ARM_KERNEL_STEP_SUSPEND = common dso_local global i32 0, align 4
@ARM_KERNEL_STEP_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, %struct.pt_regs*)* @watchpoint_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchpoint_handler(i64 %0, i32 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.perf_event*, align 8
  %18 = alloca %struct.perf_event**, align 8
  %19 = alloca %struct.debug_info*, align 8
  %20 = alloca %struct.arch_hw_breakpoint*, align 8
  %21 = alloca %struct.arch_hw_breakpoint_ctrl, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i64 -1, i64* %13, align 8
  %22 = load i32*, i32** @wp_on_reg, align 8
  %23 = call i8* @this_cpu_ptr(i32* %22)
  %24 = bitcast i8* %23 to %struct.perf_event**
  store %struct.perf_event** %24, %struct.perf_event*** %18, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.debug_info* %27, %struct.debug_info** %19, align 8
  %28 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %96, %3
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @core_num_wrps, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %99

33:                                               ; preds = %29
  %34 = load %struct.perf_event**, %struct.perf_event*** %18, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %34, i64 %36
  %38 = load %struct.perf_event*, %struct.perf_event** %37, align 8
  store %struct.perf_event* %38, %struct.perf_event** %17, align 8
  %39 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %40 = icmp eq %struct.perf_event* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %96

42:                                               ; preds = %33
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @AARCH64_ESR_ACCESS_MASK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @HW_BREAKPOINT_W, align 4
  br label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @HW_BREAKPOINT_R, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %55 = call i32 @hw_breakpoint_type(%struct.perf_event* %54)
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %96

59:                                               ; preds = %51
  %60 = load i32, i32* @AARCH64_DBG_REG_WVR, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i8* @read_wb_reg(i32 %60, i32 %61)
  %63 = ptrtoint i8* %62 to i64
  store i64 %63, i64* %16, align 8
  %64 = load i32, i32* @AARCH64_DBG_REG_WCR, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i8* @read_wb_reg(i32 %64, i32 %65)
  store i8* %66, i8** %15, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = call i32 @decode_ctrl_reg(i8* %67, %struct.arch_hw_breakpoint_ctrl* %21)
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* %16, align 8
  %71 = call i64 @get_distance_from_watchpoint(i64 %69, i64 %70, %struct.arch_hw_breakpoint_ctrl* %21)
  store i64 %71, i64* %14, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %13, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %59
  %76 = load i64, i64* %14, align 8
  store i64 %76, i64* %13, align 8
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %75, %59
  %79 = load i64, i64* %14, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %96

82:                                               ; preds = %78
  %83 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %84 = call %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event* %83)
  store %struct.arch_hw_breakpoint* %84, %struct.arch_hw_breakpoint** %20, align 8
  %85 = load i64, i64* %5, align 8
  %86 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %20, align 8
  %87 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %89 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %90 = call i32 @perf_bp_event(%struct.perf_event* %88, %struct.pt_regs* %89)
  %91 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %92 = call i64 @is_default_overflow_handler(%struct.perf_event* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %82
  store i32 1, i32* %9, align 4
  br label %95

95:                                               ; preds = %94, %82
  br label %96

96:                                               ; preds = %95, %81, %58, %41
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %29

99:                                               ; preds = %29
  %100 = load i64, i64* %13, align 8
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %124

102:                                              ; preds = %99
  %103 = load i64, i64* %13, align 8
  %104 = icmp ne i64 %103, -1
  br i1 %104, label %105, label %124

105:                                              ; preds = %102
  %106 = load %struct.perf_event**, %struct.perf_event*** %18, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %106, i64 %108
  %110 = load %struct.perf_event*, %struct.perf_event** %109, align 8
  store %struct.perf_event* %110, %struct.perf_event** %17, align 8
  %111 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %112 = call %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event* %111)
  store %struct.arch_hw_breakpoint* %112, %struct.arch_hw_breakpoint** %20, align 8
  %113 = load i64, i64* %5, align 8
  %114 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %20, align 8
  %115 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %117 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %118 = call i32 @perf_bp_event(%struct.perf_event* %116, %struct.pt_regs* %117)
  %119 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %120 = call i64 @is_default_overflow_handler(%struct.perf_event* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %105
  store i32 1, i32* %9, align 4
  br label %123

123:                                              ; preds = %122, %105
  br label %124

124:                                              ; preds = %123, %102, %99
  %125 = call i32 (...) @rcu_read_unlock()
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  store i32 0, i32* %4, align 4
  br label %179

129:                                              ; preds = %124
  %130 = load i32, i32* @AARCH64_DBG_REG_WCR, align 4
  %131 = load i32, i32* @DBG_ACTIVE_EL0, align 4
  %132 = call i32 @toggle_bp_registers(i32 %130, i32 %131, i32 0)
  %133 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %134 = call i64 @user_mode(%struct.pt_regs* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %129
  %137 = load %struct.debug_info*, %struct.debug_info** %19, align 8
  %138 = getelementptr inbounds %struct.debug_info, %struct.debug_info* %137, i32 0, i32 0
  store i32 1, i32* %138, align 8
  %139 = load %struct.debug_info*, %struct.debug_info** %19, align 8
  %140 = getelementptr inbounds %struct.debug_info, %struct.debug_info* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  store i32 0, i32* %4, align 4
  br label %179

144:                                              ; preds = %136
  %145 = load i32, i32* @TIF_SINGLESTEP, align 4
  %146 = call i64 @test_thread_flag(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load %struct.debug_info*, %struct.debug_info** %19, align 8
  %150 = getelementptr inbounds %struct.debug_info, %struct.debug_info* %149, i32 0, i32 1
  store i32 1, i32* %150, align 4
  br label %154

151:                                              ; preds = %144
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %153 = call i32 @user_enable_single_step(%struct.TYPE_5__* %152)
  br label %154

154:                                              ; preds = %151, %148
  br label %178

155:                                              ; preds = %129
  %156 = load i32, i32* @AARCH64_DBG_REG_WCR, align 4
  %157 = load i32, i32* @DBG_ACTIVE_EL1, align 4
  %158 = call i32 @toggle_bp_registers(i32 %156, i32 %157, i32 0)
  %159 = call i8* @this_cpu_ptr(i32* @stepping_kernel_bp)
  %160 = bitcast i8* %159 to i32*
  store i32* %160, i32** %10, align 8
  %161 = load i32*, i32** %10, align 8
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @ARM_KERNEL_STEP_NONE, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %155
  store i32 0, i32* %4, align 4
  br label %179

166:                                              ; preds = %155
  %167 = call i64 (...) @kernel_active_single_step()
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i32, i32* @ARM_KERNEL_STEP_SUSPEND, align 4
  %171 = load i32*, i32** %10, align 8
  store i32 %170, i32* %171, align 4
  br label %177

172:                                              ; preds = %166
  %173 = load i32, i32* @ARM_KERNEL_STEP_ACTIVE, align 4
  %174 = load i32*, i32** %10, align 8
  store i32 %173, i32* %174, align 4
  %175 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %176 = call i32 @kernel_enable_single_step(%struct.pt_regs* %175)
  br label %177

177:                                              ; preds = %172, %169
  br label %178

178:                                              ; preds = %177, %154
  store i32 0, i32* %4, align 4
  br label %179

179:                                              ; preds = %178, %165, %143, %128
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i8* @this_cpu_ptr(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @hw_breakpoint_type(%struct.perf_event*) #1

declare dso_local i8* @read_wb_reg(i32, i32) #1

declare dso_local i32 @decode_ctrl_reg(i8*, %struct.arch_hw_breakpoint_ctrl*) #1

declare dso_local i64 @get_distance_from_watchpoint(i64, i64, %struct.arch_hw_breakpoint_ctrl*) #1

declare dso_local %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event*) #1

declare dso_local i32 @perf_bp_event(%struct.perf_event*, %struct.pt_regs*) #1

declare dso_local i64 @is_default_overflow_handler(%struct.perf_event*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @toggle_bp_registers(i32, i32, i32) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i32 @user_enable_single_step(%struct.TYPE_5__*) #1

declare dso_local i64 @kernel_active_single_step(...) #1

declare dso_local i32 @kernel_enable_single_step(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
