; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_breakpoint_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_breakpoint_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.perf_event = type { i32 }
%struct.arch_hw_breakpoint = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.arch_hw_breakpoint_ctrl = type { i32 }

@bp_on_reg = common dso_local global i32 0, align 4
@core_num_brps = common dso_local global i32 0, align 4
@ARM_BASE_BVR = common dso_local global i64 0, align 8
@ARM_BASE_BCR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"breakpoint fired: address = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.pt_regs*)* @breakpoint_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @breakpoint_handler(i64 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.perf_event*, align 8
  %10 = alloca %struct.perf_event**, align 8
  %11 = alloca %struct.arch_hw_breakpoint*, align 8
  %12 = alloca %struct.arch_hw_breakpoint_ctrl, align 4
  store i64 %0, i64* %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %13 = load i32, i32* @bp_on_reg, align 4
  %14 = call %struct.perf_event** @this_cpu_ptr(i32 %13)
  store %struct.perf_event** %14, %struct.perf_event*** %10, align 8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %91, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @core_num_brps, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %94

22:                                               ; preds = %18
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load %struct.perf_event**, %struct.perf_event*** %10, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %24, i64 %26
  %28 = load %struct.perf_event*, %struct.perf_event** %27, align 8
  store %struct.perf_event* %28, %struct.perf_event** %9, align 8
  %29 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %30 = icmp eq %struct.perf_event* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %89

32:                                               ; preds = %22
  %33 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %34 = call %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event* %33)
  store %struct.arch_hw_breakpoint* %34, %struct.arch_hw_breakpoint** %11, align 8
  %35 = load i64, i64* @ARM_BASE_BVR, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = call i32 @read_wb_reg(i64 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, -4
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %79

45:                                               ; preds = %32
  %46 = load i64, i64* @ARM_BASE_BCR, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = call i32 @read_wb_reg(i64 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @decode_ctrl_reg(i32 %51, %struct.arch_hw_breakpoint_ctrl* %12)
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 3
  %55 = shl i32 1, %54
  %56 = getelementptr inbounds %struct.arch_hw_breakpoint_ctrl, %struct.arch_hw_breakpoint_ctrl* %12, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %45
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %11, align 8
  %63 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %67 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %68 = call i32 @perf_bp_event(%struct.perf_event* %66, %struct.pt_regs* %67)
  %69 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %70 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %60
  %74 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @enable_single_step(%struct.perf_event* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %60
  br label %89

78:                                               ; preds = %45
  br label %79

79:                                               ; preds = %78, %44
  %80 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %11, align 8
  %81 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %87 = call i32 @disable_single_step(%struct.perf_event* %86)
  br label %88

88:                                               ; preds = %85, %79
  br label %89

89:                                               ; preds = %88, %77, %31
  %90 = call i32 (...) @rcu_read_unlock()
  br label %91

91:                                               ; preds = %89
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %18

94:                                               ; preds = %18
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @watchpoint_single_step_handler(i32 %95)
  ret void
}

declare dso_local %struct.perf_event** @this_cpu_ptr(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event*) #1

declare dso_local i32 @read_wb_reg(i64) #1

declare dso_local i32 @decode_ctrl_reg(i32, %struct.arch_hw_breakpoint_ctrl*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @perf_bp_event(%struct.perf_event*, %struct.pt_regs*) #1

declare dso_local i32 @enable_single_step(%struct.perf_event*, i32) #1

declare dso_local i32 @disable_single_step(%struct.perf_event*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @watchpoint_single_step_handler(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
