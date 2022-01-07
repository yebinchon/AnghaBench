; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_hw_breakpoint.c_arch_install_hw_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_hw_breakpoint.c_arch_install_hw_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.arch_hw_breakpoint = type { i64, i64, i32, i32 }

@HBP_NUM = common dso_local global i32 0, align 4
@bp_per_reg = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Can't find any breakpoint slot\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@cpu_debugreg = common dso_local global i32* null, align 8
@cpu_dr7 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_install_hw_breakpoint(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.arch_hw_breakpoint*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_event**, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = call %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event* %8)
  store %struct.arch_hw_breakpoint* %9, %struct.arch_hw_breakpoint** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %28, %1
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @HBP_NUM, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load i32*, i32** @bp_per_reg, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i8* @this_cpu_ptr(i32* %18)
  %20 = bitcast i8* %19 to %struct.perf_event**
  store %struct.perf_event** %20, %struct.perf_event*** %7, align 8
  %21 = load %struct.perf_event**, %struct.perf_event*** %7, align 8
  %22 = load %struct.perf_event*, %struct.perf_event** %21, align 8
  %23 = icmp ne %struct.perf_event* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %26 = load %struct.perf_event**, %struct.perf_event*** %7, align 8
  store %struct.perf_event* %25, %struct.perf_event** %26, align 8
  br label %31

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %10

31:                                               ; preds = %24, %10
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @HBP_NUM, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ONCE(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %83

41:                                               ; preds = %31
  %42 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %4, align 8
  %43 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @set_debugreg(i64 %44, i32 %45)
  %47 = load i32*, i32** @cpu_debugreg, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %4, align 8
  %53 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @__this_cpu_write(i32 %51, i64 %54)
  %56 = call i8* @this_cpu_ptr(i32* @cpu_dr7)
  %57 = bitcast i8* %56 to i64*
  store i64* %57, i64** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %4, align 8
  %60 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %4, align 8
  %63 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @encode_dr7(i32 %58, i32 %61, i32 %64)
  %66 = load i64*, i64** %5, align 8
  %67 = load i64, i64* %66, align 8
  %68 = or i64 %67, %65
  store i64 %68, i64* %66, align 8
  %69 = load i64*, i64** %5, align 8
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @set_debugreg(i64 %70, i32 7)
  %72 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %4, align 8
  %73 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %41
  %77 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %4, align 8
  %78 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @set_dr_addr_mask(i64 %79, i32 %80)
  br label %82

82:                                               ; preds = %76, %41
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %38
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event*) #1

declare dso_local i8* @this_cpu_ptr(i32*) #1

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @set_debugreg(i64, i32) #1

declare dso_local i32 @__this_cpu_write(i32, i64) #1

declare dso_local i64 @encode_dr7(i32, i32, i32) #1

declare dso_local i32 @set_dr_addr_mask(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
