; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_watchpoint_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_watchpoint_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.arch_hw_breakpoint = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.arch_hw_breakpoint_ctrl = type { i32 }

@wp_on_reg = common dso_local global i32 0, align 4
@core_num_wrps = common dso_local global i32 0, align 4
@debug_arch = common dso_local global i64 0, align 8
@ARM_DEBUG_ARCH_V7_1 = common dso_local global i64 0, align 8
@ARM_BREAKPOINT_LEN_8 = common dso_local global i64 0, align 8
@ARM_BASE_WVR = common dso_local global i64 0, align 8
@ARM_BASE_WCR = common dso_local global i64 0, align 8
@ARM_FSR_ACCESS_MASK = common dso_local global i32 0, align 4
@HW_BREAKPOINT_W = common dso_local global i32 0, align 4
@HW_BREAKPOINT_R = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"watchpoint fired: address = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, %struct.pt_regs*)* @watchpoint_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @watchpoint_handler(i64 %0, i32 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.perf_event*, align 8
  %13 = alloca %struct.perf_event**, align 8
  %14 = alloca %struct.arch_hw_breakpoint*, align 8
  %15 = alloca %struct.arch_hw_breakpoint_ctrl, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %16 = load i32, i32* @wp_on_reg, align 4
  %17 = call %struct.perf_event** @this_cpu_ptr(i32 %16)
  store %struct.perf_event** %17, %struct.perf_event*** %13, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %133, %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @core_num_wrps, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %136

22:                                               ; preds = %18
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load %struct.perf_event**, %struct.perf_event*** %13, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %24, i64 %26
  %28 = load %struct.perf_event*, %struct.perf_event** %27, align 8
  store %struct.perf_event* %28, %struct.perf_event** %12, align 8
  %29 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  %30 = icmp eq %struct.perf_event* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %131

32:                                               ; preds = %22
  %33 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  %34 = call %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event* %33)
  store %struct.arch_hw_breakpoint* %34, %struct.arch_hw_breakpoint** %14, align 8
  %35 = load i64, i64* @debug_arch, align 8
  %36 = load i64, i64* @ARM_DEBUG_ARCH_V7_1, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %14, align 8
  %48 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %114

49:                                               ; preds = %32
  %50 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %14, align 8
  %51 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ARM_BREAKPOINT_LEN_8, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i64 7, i64* %11, align 8
  br label %58

57:                                               ; preds = %49
  store i64 3, i64* %11, align 8
  br label %58

58:                                               ; preds = %57, %56
  %59 = load i64, i64* @ARM_BASE_WVR, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = call i64 @read_wb_reg(i64 %62)
  store i64 %63, i64* %9, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* %11, align 8
  %67 = xor i64 %66, -1
  %68 = and i64 %65, %67
  %69 = icmp ne i64 %64, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %131

71:                                               ; preds = %58
  %72 = load i64, i64* @ARM_BASE_WCR, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = call i64 @read_wb_reg(i64 %75)
  store i64 %76, i64* %10, align 8
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @decode_ctrl_reg(i64 %77, %struct.arch_hw_breakpoint_ctrl* %15)
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* %11, align 8
  %81 = and i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = shl i32 1, %82
  %84 = getelementptr inbounds %struct.arch_hw_breakpoint_ctrl, %struct.arch_hw_breakpoint_ctrl* %15, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %71
  br label %131

89:                                               ; preds = %71
  %90 = call i64 (...) @debug_exception_updates_fsr()
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @ARM_FSR_ACCESS_MASK, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @HW_BREAKPOINT_W, align 4
  br label %101

99:                                               ; preds = %92
  %100 = load i32, i32* @HW_BREAKPOINT_R, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  %105 = call i32 @hw_breakpoint_type(%struct.perf_event* %104)
  %106 = and i32 %103, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %101
  br label %131

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %89
  %111 = load i64, i64* %4, align 8
  %112 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %14, align 8
  %113 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %110, %38
  %115 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %14, align 8
  %116 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %117)
  %119 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  %120 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %121 = call i32 @perf_bp_event(%struct.perf_event* %119, %struct.pt_regs* %120)
  %122 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  %123 = call i64 @is_default_overflow_handler(%struct.perf_event* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %114
  %126 = load %struct.perf_event*, %struct.perf_event** %12, align 8
  %127 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %128 = call i32 @instruction_pointer(%struct.pt_regs* %127)
  %129 = call i32 @enable_single_step(%struct.perf_event* %126, i32 %128)
  br label %130

130:                                              ; preds = %125, %114
  br label %131

131:                                              ; preds = %130, %108, %88, %70, %31
  %132 = call i32 (...) @rcu_read_unlock()
  br label %133

133:                                              ; preds = %131
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %7, align 4
  br label %18

136:                                              ; preds = %18
  ret void
}

declare dso_local %struct.perf_event** @this_cpu_ptr(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @read_wb_reg(i64) #1

declare dso_local i32 @decode_ctrl_reg(i64, %struct.arch_hw_breakpoint_ctrl*) #1

declare dso_local i64 @debug_exception_updates_fsr(...) #1

declare dso_local i32 @hw_breakpoint_type(%struct.perf_event*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @perf_bp_event(%struct.perf_event*, %struct.pt_regs*) #1

declare dso_local i64 @is_default_overflow_handler(%struct.perf_event*) #1

declare dso_local i32 @enable_single_step(%struct.perf_event*, i32) #1

declare dso_local i32 @instruction_pointer(%struct.pt_regs*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
