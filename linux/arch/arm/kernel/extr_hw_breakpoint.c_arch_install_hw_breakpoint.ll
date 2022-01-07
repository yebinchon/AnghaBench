; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_arch_install_hw_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_arch_install_hw_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.arch_hw_breakpoint = type { i32, i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@ARM_BREAKPOINT_EXECUTE = common dso_local global i64 0, align 8
@ARM_BASE_BCR = common dso_local global i32 0, align 4
@ARM_BASE_BVR = common dso_local global i32 0, align 4
@bp_on_reg = common dso_local global i32 0, align 4
@core_num_brps = common dso_local global i32 0, align 4
@ARM_BASE_WCR = common dso_local global i32 0, align 4
@ARM_BASE_WVR = common dso_local global i32 0, align 4
@wp_on_reg = common dso_local global i32 0, align 4
@core_num_wrps = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Can't find any breakpoint slot\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_install_hw_breakpoint(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.arch_hw_breakpoint*, align 8
  %5 = alloca %struct.perf_event**, align 8
  %6 = alloca %struct.perf_event**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = call %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event* %13)
  store %struct.arch_hw_breakpoint* %14, %struct.arch_hw_breakpoint** %4, align 8
  %15 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %4, align 8
  %16 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %4, align 8
  %19 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %18, i32 0, i32 2
  %20 = bitcast %struct.TYPE_2__* %19 to { i64, i64 }*
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @encode_ctrl_reg(i64 %22, i64 %24)
  %26 = or i32 %25, 1
  store i32 %26, i32* %12, align 4
  %27 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %4, align 8
  %28 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ARM_BREAKPOINT_EXECUTE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %1
  %34 = load i32, i32* @ARM_BASE_BCR, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @ARM_BASE_BVR, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* @bp_on_reg, align 4
  %37 = call %struct.perf_event** @this_cpu_ptr(i32 %36)
  store %struct.perf_event** %37, %struct.perf_event*** %6, align 8
  %38 = load i32, i32* @core_num_brps, align 4
  store i32 %38, i32* %8, align 4
  br label %45

39:                                               ; preds = %1
  %40 = load i32, i32* @ARM_BASE_WCR, align 4
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @ARM_BASE_WVR, align 4
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* @wp_on_reg, align 4
  %43 = call %struct.perf_event** @this_cpu_ptr(i32 %42)
  store %struct.perf_event** %43, %struct.perf_event*** %6, align 8
  %44 = load i32, i32* @core_num_wrps, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %39, %33
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %62, %45
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load %struct.perf_event**, %struct.perf_event*** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %51, i64 %53
  store %struct.perf_event** %54, %struct.perf_event*** %5, align 8
  %55 = load %struct.perf_event**, %struct.perf_event*** %5, align 8
  %56 = load %struct.perf_event*, %struct.perf_event** %55, align 8
  %57 = icmp ne %struct.perf_event* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %50
  %59 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %60 = load %struct.perf_event**, %struct.perf_event*** %5, align 8
  store %struct.perf_event* %59, %struct.perf_event** %60, align 8
  br label %65

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %46

65:                                               ; preds = %58, %46
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @EBUSY, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %117

73:                                               ; preds = %65
  %74 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %4, align 8
  %75 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %106

79:                                               ; preds = %73
  %80 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %4, align 8
  %81 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, -4
  store i32 %83, i32* %11, align 4
  %84 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %4, align 8
  %85 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %84, i32 0, i32 3
  %86 = bitcast %struct.TYPE_2__* %85 to { i64, i64 }*
  %87 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %86, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @encode_ctrl_reg(i64 %88, i64 %90)
  store i32 %91, i32* %12, align 4
  %92 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %4, align 8
  %93 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @ARM_BREAKPOINT_EXECUTE, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %79
  store i32 0, i32* %7, align 4
  %99 = load i32, i32* @ARM_BASE_BCR, align 4
  %100 = load i32, i32* @core_num_brps, align 4
  %101 = add nsw i32 %99, %100
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* @ARM_BASE_BVR, align 4
  %103 = load i32, i32* @core_num_brps, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %98, %79
  br label %106

106:                                              ; preds = %105, %73
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @write_wb_reg(i32 %109, i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @write_wb_reg(i32 %114, i32 %115)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %106, %69
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event*) #1

declare dso_local i32 @encode_ctrl_reg(i64, i64) #1

declare dso_local %struct.perf_event** @this_cpu_ptr(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @write_wb_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
