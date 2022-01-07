; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_hw_breakpoint.c_arch_install_hw_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_hw_breakpoint.c_arch_install_hw_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (%struct.arch_hw_breakpoint*, i32)*, i32 }
%struct.arch_hw_breakpoint = type { i32 }
%struct.perf_event = type { i32 }

@sh_ubc = common dso_local global %struct.TYPE_2__* null, align 8
@bp_per_reg = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Can't find any breakpoint slot\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_install_hw_breakpoint(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.arch_hw_breakpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_event**, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = call %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event* %7)
  store %struct.arch_hw_breakpoint* %8, %struct.arch_hw_breakpoint** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %28, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh_ubc, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load i32*, i32** @bp_per_reg, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call %struct.perf_event** @this_cpu_ptr(i32* %19)
  store %struct.perf_event** %20, %struct.perf_event*** %6, align 8
  %21 = load %struct.perf_event**, %struct.perf_event*** %6, align 8
  %22 = load %struct.perf_event*, %struct.perf_event** %21, align 8
  %23 = icmp ne %struct.perf_event* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %26 = load %struct.perf_event**, %struct.perf_event*** %6, align 8
  store %struct.perf_event* %25, %struct.perf_event** %26, align 8
  br label %31

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %9

31:                                               ; preds = %24, %9
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh_ubc, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ONCE(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %54

43:                                               ; preds = %31
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh_ubc, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @clk_enable(i32 %46)
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh_ubc, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32 (%struct.arch_hw_breakpoint*, i32)*, i32 (%struct.arch_hw_breakpoint*, i32)** %49, align 8
  %51 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 %50(%struct.arch_hw_breakpoint* %51, i32 %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %43, %40
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event*) #1

declare dso_local %struct.perf_event** @this_cpu_ptr(i32*) #1

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @clk_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
