; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hw_breakpoint.c_hw_breakpoint_arch_parse.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hw_breakpoint.c_hw_breakpoint_arch_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.perf_event_attr = type { i32 }
%struct.arch_hw_breakpoint = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64 }

@ARM_BREAKPOINT_LEN_8 = common dso_local global i32 0, align 4
@ARM_BREAKPOINT_LEN_2 = common dso_local global i32 0, align 4
@ARM_BREAKPOINT_LEN_1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ARM_BREAKPOINT_EXECUTE = common dso_local global i64 0, align 8
@AARCH64_BREAKPOINT_EL1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hw_breakpoint_arch_parse(%struct.perf_event* %0, %struct.perf_event_attr* %1, %struct.arch_hw_breakpoint* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.perf_event_attr*, align 8
  %7 = alloca %struct.arch_hw_breakpoint*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %5, align 8
  store %struct.perf_event_attr* %1, %struct.perf_event_attr** %6, align 8
  store %struct.arch_hw_breakpoint* %2, %struct.arch_hw_breakpoint** %7, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %12 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %13 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %14 = call i32 @arch_build_bp_info(%struct.perf_event* %11, %struct.perf_event_attr* %12, %struct.arch_hw_breakpoint* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %106

19:                                               ; preds = %3
  %20 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %21 = call i64 @is_compat_bp(%struct.perf_event* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %62

23:                                               ; preds = %19
  %24 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %25 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ARM_BREAKPOINT_LEN_8, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 7, i32* %9, align 4
  br label %32

31:                                               ; preds = %23
  store i32 3, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %34 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  switch i32 %38, label %58 [
    i32 0, label %39
    i32 1, label %40
    i32 2, label %40
    i32 3, label %49
  ]

39:                                               ; preds = %32
  br label %61

40:                                               ; preds = %32, %32
  %41 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %42 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ARM_BREAKPOINT_LEN_2, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %61

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %32, %48
  %50 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %51 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ARM_BREAKPOINT_LEN_1, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %61

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %32, %57
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %106

61:                                               ; preds = %56, %47, %39
  br label %77

62:                                               ; preds = %19
  %63 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %64 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ARM_BREAKPOINT_EXECUTE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 3, i32* %9, align 4
  br label %71

70:                                               ; preds = %62
  store i32 7, i32* %9, align 4
  br label %71

71:                                               ; preds = %70, %69
  %72 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %73 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %71, %61
  %78 = load i32, i32* %9, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %81 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %86 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 %88, %84
  store i32 %89, i32* %87, align 8
  %90 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %91 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AARCH64_BREAKPOINT_EL1, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %77
  %97 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %98 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %106

105:                                              ; preds = %96, %77
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %102, %58, %17
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @arch_build_bp_info(%struct.perf_event*, %struct.perf_event_attr*, %struct.arch_hw_breakpoint*) #1

declare dso_local i64 @is_compat_bp(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
