; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_get_max_wp_len.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_get_max_wp_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_hw_breakpoint_ctrl = type { i32 }

@debug_arch = common dso_local global i64 0, align 8
@ARM_DEBUG_ARCH_V7_ECP14 = common dso_local global i64 0, align 8
@ARM_BREAKPOINT_LEN_8 = common dso_local global i32 0, align 4
@ARM_BASE_WVR = common dso_local global i32 0, align 4
@ARM_BASE_WCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_max_wp_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_max_wp_len() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.arch_hw_breakpoint_ctrl, align 4
  %3 = alloca i32, align 4
  store i32 4, i32* %3, align 4
  %4 = load i64, i64* @debug_arch, align 8
  %5 = load i64, i64* @ARM_DEBUG_ARCH_V7_ECP14, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %28

8:                                                ; preds = %0
  %9 = call i32 @memset(%struct.arch_hw_breakpoint_ctrl* %2, i32 0, i32 4)
  %10 = load i32, i32* @ARM_BREAKPOINT_LEN_8, align 4
  %11 = getelementptr inbounds %struct.arch_hw_breakpoint_ctrl, %struct.arch_hw_breakpoint_ctrl* %2, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.arch_hw_breakpoint_ctrl, %struct.arch_hw_breakpoint_ctrl* %2, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @encode_ctrl_reg(i32 %13)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @ARM_BASE_WVR, align 4
  %16 = call i32 @write_wb_reg(i32 %15, i32 0)
  %17 = load i32, i32* @ARM_BASE_WCR, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @write_wb_reg(i32 %17, i32 %18)
  %20 = load i32, i32* @ARM_BASE_WCR, align 4
  %21 = call i32 @read_wb_reg(i32 %20)
  %22 = load i32, i32* %1, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* %1, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %8
  store i32 8, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %8
  br label %28

28:                                               ; preds = %27, %7
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @memset(%struct.arch_hw_breakpoint_ctrl*, i32, i32) #1

declare dso_local i32 @encode_ctrl_reg(i32) #1

declare dso_local i32 @write_wb_reg(i32, i32) #1

declare dso_local i32 @read_wb_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
