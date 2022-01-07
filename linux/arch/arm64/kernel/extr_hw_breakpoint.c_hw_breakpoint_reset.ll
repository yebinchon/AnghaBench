; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hw_breakpoint.c_hw_breakpoint_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hw_breakpoint.c_hw_breakpoint_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }

@bp_on_reg = common dso_local global i32 0, align 4
@core_num_brps = common dso_local global i32 0, align 4
@HW_BREAKPOINT_RESTORE = common dso_local global i32 0, align 4
@AARCH64_DBG_REG_BCR = common dso_local global i32 0, align 4
@AARCH64_DBG_REG_BVR = common dso_local global i32 0, align 4
@wp_on_reg = common dso_local global i32 0, align 4
@core_num_wrps = common dso_local global i32 0, align 4
@AARCH64_DBG_REG_WCR = common dso_local global i32 0, align 4
@AARCH64_DBG_REG_WVR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hw_breakpoint_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_breakpoint_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event**, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @bp_on_reg, align 4
  %6 = call %struct.perf_event** @this_cpu_ptr(i32 %5)
  store %struct.perf_event** %6, %struct.perf_event*** %4, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %34, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @core_num_brps, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = load %struct.perf_event**, %struct.perf_event*** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %12, i64 %14
  %16 = load %struct.perf_event*, %struct.perf_event** %15, align 8
  %17 = icmp ne %struct.perf_event* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.perf_event**, %struct.perf_event*** %4, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %19, i64 %21
  %23 = load %struct.perf_event*, %struct.perf_event** %22, align 8
  %24 = load i32, i32* @HW_BREAKPOINT_RESTORE, align 4
  %25 = call i32 @hw_breakpoint_control(%struct.perf_event* %23, i32 %24)
  br label %33

26:                                               ; preds = %11
  %27 = load i32, i32* @AARCH64_DBG_REG_BCR, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @write_wb_reg(i32 %27, i32 %28, i64 0)
  %30 = load i32, i32* @AARCH64_DBG_REG_BVR, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @write_wb_reg(i32 %30, i32 %31, i64 0)
  br label %33

33:                                               ; preds = %26, %18
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %7

37:                                               ; preds = %7
  %38 = load i32, i32* @wp_on_reg, align 4
  %39 = call %struct.perf_event** @this_cpu_ptr(i32 %38)
  store %struct.perf_event** %39, %struct.perf_event*** %4, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %67, %37
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @core_num_wrps, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = load %struct.perf_event**, %struct.perf_event*** %4, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %45, i64 %47
  %49 = load %struct.perf_event*, %struct.perf_event** %48, align 8
  %50 = icmp ne %struct.perf_event* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load %struct.perf_event**, %struct.perf_event*** %4, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %52, i64 %54
  %56 = load %struct.perf_event*, %struct.perf_event** %55, align 8
  %57 = load i32, i32* @HW_BREAKPOINT_RESTORE, align 4
  %58 = call i32 @hw_breakpoint_control(%struct.perf_event* %56, i32 %57)
  br label %66

59:                                               ; preds = %44
  %60 = load i32, i32* @AARCH64_DBG_REG_WCR, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @write_wb_reg(i32 %60, i32 %61, i64 0)
  %63 = load i32, i32* @AARCH64_DBG_REG_WVR, align 4
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @write_wb_reg(i32 %63, i32 %64, i64 0)
  br label %66

66:                                               ; preds = %59, %51
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %40

70:                                               ; preds = %40
  ret i32 0
}

declare dso_local %struct.perf_event** @this_cpu_ptr(i32) #1

declare dso_local i32 @hw_breakpoint_control(%struct.perf_event*, i32) #1

declare dso_local i32 @write_wb_reg(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
