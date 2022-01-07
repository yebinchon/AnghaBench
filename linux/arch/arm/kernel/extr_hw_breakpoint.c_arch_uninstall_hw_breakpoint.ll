; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_arch_uninstall_hw_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_arch_uninstall_hw_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.arch_hw_breakpoint = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@ARM_BREAKPOINT_EXECUTE = common dso_local global i64 0, align 8
@ARM_BASE_BCR = common dso_local global i32 0, align 4
@bp_on_reg = common dso_local global i32 0, align 4
@core_num_brps = common dso_local global i32 0, align 4
@ARM_BASE_WCR = common dso_local global i32 0, align 4
@wp_on_reg = common dso_local global i32 0, align 4
@core_num_wrps = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Can't find any breakpoint slot\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_uninstall_hw_breakpoint(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.arch_hw_breakpoint*, align 8
  %4 = alloca %struct.perf_event**, align 8
  %5 = alloca %struct.perf_event**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %10 = call %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event* %9)
  store %struct.arch_hw_breakpoint* %10, %struct.arch_hw_breakpoint** %3, align 8
  %11 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %3, align 8
  %12 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ARM_BREAKPOINT_EXECUTE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @ARM_BASE_BCR, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @bp_on_reg, align 4
  %20 = call %struct.perf_event** @this_cpu_ptr(i32 %19)
  store %struct.perf_event** %20, %struct.perf_event*** %5, align 8
  %21 = load i32, i32* @core_num_brps, align 4
  store i32 %21, i32* %7, align 4
  br label %27

22:                                               ; preds = %1
  %23 = load i32, i32* @ARM_BASE_WCR, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @wp_on_reg, align 4
  %25 = call %struct.perf_event** @this_cpu_ptr(i32 %24)
  store %struct.perf_event** %25, %struct.perf_event*** %5, align 8
  %26 = load i32, i32* @core_num_wrps, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %22, %17
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %44, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load %struct.perf_event**, %struct.perf_event*** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %33, i64 %35
  store %struct.perf_event** %36, %struct.perf_event*** %4, align 8
  %37 = load %struct.perf_event**, %struct.perf_event*** %4, align 8
  %38 = load %struct.perf_event*, %struct.perf_event** %37, align 8
  %39 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %40 = icmp eq %struct.perf_event* %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load %struct.perf_event**, %struct.perf_event*** %4, align 8
  store %struct.perf_event* null, %struct.perf_event** %42, align 8
  br label %47

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %28

47:                                               ; preds = %41, %28
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %75

53:                                               ; preds = %47
  %54 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %3, align 8
  %55 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ARM_BREAKPOINT_EXECUTE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %3, align 8
  %62 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  %67 = load i32, i32* @ARM_BASE_BCR, align 4
  %68 = load i32, i32* @core_num_brps, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %66, %60, %53
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i32 @write_wb_reg(i32 %73, i32 0)
  br label %75

75:                                               ; preds = %70, %51
  ret void
}

declare dso_local %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event*) #1

declare dso_local %struct.perf_event** @this_cpu_ptr(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @write_wb_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
