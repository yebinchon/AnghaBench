; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_hw_breakpoint.c_arch_uninstall_hw_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_hw_breakpoint.c_arch_uninstall_hw_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 (%struct.arch_hw_breakpoint*, i32)* }
%struct.arch_hw_breakpoint = type { i32 }
%struct.perf_event = type { i32 }

@sh_ubc = common dso_local global %struct.TYPE_2__* null, align 8
@bp_per_reg = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Can't find any breakpoint slot\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_uninstall_hw_breakpoint(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.arch_hw_breakpoint*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event**, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %7 = call %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event* %6)
  store %struct.arch_hw_breakpoint* %7, %struct.arch_hw_breakpoint** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %27, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh_ubc, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %8
  %15 = load i32*, i32** @bp_per_reg, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call %struct.perf_event** @this_cpu_ptr(i32* %18)
  store %struct.perf_event** %19, %struct.perf_event*** %5, align 8
  %20 = load %struct.perf_event**, %struct.perf_event*** %5, align 8
  %21 = load %struct.perf_event*, %struct.perf_event** %20, align 8
  %22 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %23 = icmp eq %struct.perf_event* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load %struct.perf_event**, %struct.perf_event*** %5, align 8
  store %struct.perf_event* null, %struct.perf_event** %25, align 8
  br label %30

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %8

30:                                               ; preds = %24, %8
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh_ubc, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ONCE(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %51

40:                                               ; preds = %30
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh_ubc, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32 (%struct.arch_hw_breakpoint*, i32)*, i32 (%struct.arch_hw_breakpoint*, i32)** %42, align 8
  %44 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 %43(%struct.arch_hw_breakpoint* %44, i32 %45)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh_ubc, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @clk_disable(i32 %49)
  br label %51

51:                                               ; preds = %40, %39
  ret void
}

declare dso_local %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event*) #1

declare dso_local %struct.perf_event** @this_cpu_ptr(i32*) #1

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
