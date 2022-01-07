; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_hw_breakpoint.c_aout_dump_debugregs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_hw_breakpoint.c_aout_dump_debugregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.thread_struct }
%struct.thread_struct = type { i32, %struct.perf_event** }
%struct.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.user = type { i32* }
%struct.arch_hw_breakpoint = type { i32, i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@HBP_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aout_dump_debugregs(%struct.user* %0) #0 {
  %2 = alloca %struct.user*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.arch_hw_breakpoint*, align 8
  %7 = alloca %struct.thread_struct*, align 8
  store %struct.user* %0, %struct.user** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.thread_struct* %9, %struct.thread_struct** %7, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %61, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @HBP_NUM, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %64

14:                                               ; preds = %10
  %15 = load %struct.thread_struct*, %struct.thread_struct** %7, align 8
  %16 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %15, i32 0, i32 1
  %17 = load %struct.perf_event**, %struct.perf_event*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %17, i64 %19
  %21 = load %struct.perf_event*, %struct.perf_event** %20, align 8
  store %struct.perf_event* %21, %struct.perf_event** %5, align 8
  %22 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %23 = icmp ne %struct.perf_event* %22, null
  br i1 %23, label %24, label %53

24:                                               ; preds = %14
  %25 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %26 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %24
  %31 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %32 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.user*, %struct.user** %2, align 8
  %36 = getelementptr inbounds %struct.user, %struct.user* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  %41 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %42 = call %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event* %41)
  store %struct.arch_hw_breakpoint* %42, %struct.arch_hw_breakpoint** %6, align 8
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %6, align 8
  %45 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %6, align 8
  %48 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @encode_dr7(i32 %43, i32 %46, i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %60

53:                                               ; preds = %24, %14
  %54 = load %struct.user*, %struct.user** %2, align 8
  %55 = getelementptr inbounds %struct.user, %struct.user* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %53, %30
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %10

64:                                               ; preds = %10
  %65 = load %struct.user*, %struct.user** %2, align 8
  %66 = getelementptr inbounds %struct.user, %struct.user* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  store i32 0, i32* %68, align 4
  %69 = load %struct.user*, %struct.user** %2, align 8
  %70 = getelementptr inbounds %struct.user, %struct.user* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 5
  store i32 0, i32* %72, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.user*, %struct.user** %2, align 8
  %78 = getelementptr inbounds %struct.user, %struct.user* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 6
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.user*, %struct.user** %2, align 8
  %83 = getelementptr inbounds %struct.user, %struct.user* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 7
  store i32 %81, i32* %85, align 4
  ret void
}

declare dso_local %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event*) #1

declare dso_local i32 @encode_dr7(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
