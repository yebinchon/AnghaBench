; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hw_breakpoint.c_hw_breakpoint_control.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hw_breakpoint.c_hw_breakpoint_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.debug_info }
%struct.debug_info = type { i32, i32 }
%struct.perf_event = type { i32 }
%struct.arch_hw_breakpoint = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@ARM_BREAKPOINT_EXECUTE = common dso_local global i64 0, align 8
@AARCH64_DBG_REG_BCR = common dso_local global i32 0, align 4
@AARCH64_DBG_REG_BVR = common dso_local global i32 0, align 4
@bp_on_reg = common dso_local global i32 0, align 4
@core_num_brps = common dso_local global i32 0, align 4
@AARCH64_DBG_REG_WCR = common dso_local global i32 0, align 4
@AARCH64_DBG_REG_WVR = common dso_local global i32 0, align 4
@wp_on_reg = common dso_local global i32 0, align 4
@core_num_wrps = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Can't find any breakpoint slot\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @hw_breakpoint_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_breakpoint_control(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arch_hw_breakpoint*, align 8
  %7 = alloca %struct.perf_event**, align 8
  %8 = alloca %struct.debug_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %17 = call %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event* %16)
  store %struct.arch_hw_breakpoint* %17, %struct.arch_hw_breakpoint** %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.debug_info* %20, %struct.debug_info** %8, align 8
  %21 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %6, align 8
  %22 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @debug_exception_level(i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %6, align 8
  %27 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ARM_BREAKPOINT_EXECUTE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %2
  %33 = load i32, i32* @AARCH64_DBG_REG_BCR, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* @AARCH64_DBG_REG_BVR, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* @bp_on_reg, align 4
  %36 = call %struct.perf_event** @this_cpu_ptr(i32 %35)
  store %struct.perf_event** %36, %struct.perf_event*** %7, align 8
  %37 = load i32, i32* @core_num_brps, align 4
  store i32 %37, i32* %10, align 4
  %38 = load %struct.debug_info*, %struct.debug_info** %8, align 8
  %39 = getelementptr inbounds %struct.debug_info, %struct.debug_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %13, align 4
  br label %56

44:                                               ; preds = %2
  %45 = load i32, i32* @AARCH64_DBG_REG_WCR, align 4
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* @AARCH64_DBG_REG_WVR, align 4
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* @wp_on_reg, align 4
  %48 = call %struct.perf_event** @this_cpu_ptr(i32 %47)
  store %struct.perf_event** %48, %struct.perf_event*** %7, align 8
  %49 = load i32, i32* @core_num_wrps, align 4
  store i32 %49, i32* %10, align 4
  %50 = load %struct.debug_info*, %struct.debug_info** %8, align 8
  %51 = getelementptr inbounds %struct.debug_info, %struct.debug_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %44, %32
  %57 = load %struct.perf_event**, %struct.perf_event*** %7, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @hw_breakpoint_slot_setup(%struct.perf_event** %57, i32 %58, %struct.perf_event* %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i64 @WARN_ONCE(i32 %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %3, align 4
  br label %109

69:                                               ; preds = %56
  %70 = load i32, i32* %5, align 4
  switch i32 %70, label %108 [
    i32 130, label %71
    i32 129, label %74
    i32 128, label %102
  ]

71:                                               ; preds = %69
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @enable_debug_monitors(i32 %72)
  br label %74

74:                                               ; preds = %69, %71
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %6, align 8
  %78 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @write_wb_reg(i32 %75, i32 %76, i32 %79)
  %81 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %6, align 8
  %82 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %81, i32 0, i32 1
  %83 = bitcast %struct.TYPE_5__* %82 to { i64, i32 }*
  %84 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %83, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @encode_ctrl_reg(i64 %85, i32 %87)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %74
  %94 = load i32, i32* %15, align 4
  %95 = or i32 %94, 1
  br label %99

96:                                               ; preds = %74
  %97 = load i32, i32* %15, align 4
  %98 = and i32 %97, -2
  br label %99

99:                                               ; preds = %96, %93
  %100 = phi i32 [ %95, %93 ], [ %98, %96 ]
  %101 = call i32 @write_wb_reg(i32 %89, i32 %90, i32 %100)
  br label %108

102:                                              ; preds = %69
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @write_wb_reg(i32 %103, i32 %104, i32 0)
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @disable_debug_monitors(i32 %106)
  br label %108

108:                                              ; preds = %69, %102, %99
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %67
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event*) #1

declare dso_local i32 @debug_exception_level(i32) #1

declare dso_local %struct.perf_event** @this_cpu_ptr(i32) #1

declare dso_local i32 @hw_breakpoint_slot_setup(%struct.perf_event**, i32, %struct.perf_event*, i32) #1

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @enable_debug_monitors(i32) #1

declare dso_local i32 @write_wb_reg(i32, i32, i32) #1

declare dso_local i32 @encode_ctrl_reg(i64, i32) #1

declare dso_local i32 @disable_debug_monitors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
