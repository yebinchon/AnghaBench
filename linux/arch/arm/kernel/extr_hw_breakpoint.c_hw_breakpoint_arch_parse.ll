; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_hw_breakpoint_arch_parse.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_hw_breakpoint_arch_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.perf_event_attr = type { i32 }
%struct.arch_hw_breakpoint = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@ARM_BREAKPOINT_LEN_8 = common dso_local global i32 0, align 4
@ARM_BREAKPOINT_LEN_2 = common dso_local global i32 0, align 4
@ARM_BREAKPOINT_LEN_1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ARM_BREAKPOINT_LOAD = common dso_local global i64 0, align 8
@ARM_BREAKPOINT_STORE = common dso_local global i64 0, align 8

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
  store i32 0, i32* %8, align 4
  store i32 3, i32* %10, align 4
  %11 = call i32 (...) @monitor_mode_enabled()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %123

16:                                               ; preds = %3
  %17 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %18 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %19 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %20 = call i32 @arch_build_bp_info(%struct.perf_event* %17, %struct.perf_event_attr* %18, %struct.arch_hw_breakpoint* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %121

24:                                               ; preds = %16
  %25 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %26 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ARM_BREAKPOINT_LEN_8, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 7, i32* %10, align 4
  br label %32

32:                                               ; preds = %31, %24
  %33 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %34 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
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
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
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
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
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
  store i32 %60, i32* %8, align 4
  br label %121

61:                                               ; preds = %56, %47, %39
  %62 = load i32, i32* %10, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %65 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %70 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = shl i32 %72, %68
  store i32 %73, i32* %71, align 8
  %74 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %75 = call i64 @is_default_overflow_handler(%struct.perf_event* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %120

77:                                               ; preds = %61
  %78 = call i32 (...) @core_has_mismatch_brps()
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %123

83:                                               ; preds = %77
  %84 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %85 = call i64 @arch_check_bp_in_kernelspace(%struct.arch_hw_breakpoint* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* @EPERM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %123

90:                                               ; preds = %83
  %91 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %92 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %123

99:                                               ; preds = %90
  %100 = call i32 (...) @debug_exception_updates_fsr()
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %119, label %102

102:                                              ; preds = %99
  %103 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %104 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ARM_BREAKPOINT_LOAD, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %116, label %109

109:                                              ; preds = %102
  %110 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %111 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @ARM_BREAKPOINT_STORE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %109, %102
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %123

119:                                              ; preds = %109, %99
  br label %120

120:                                              ; preds = %119, %61
  br label %121

121:                                              ; preds = %120, %58, %23
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %121, %116, %96, %87, %80, %13
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @monitor_mode_enabled(...) #1

declare dso_local i32 @arch_build_bp_info(%struct.perf_event*, %struct.perf_event_attr*, %struct.arch_hw_breakpoint*) #1

declare dso_local i64 @is_default_overflow_handler(%struct.perf_event*) #1

declare dso_local i32 @core_has_mismatch_brps(...) #1

declare dso_local i64 @arch_check_bp_in_kernelspace(%struct.arch_hw_breakpoint*) #1

declare dso_local i32 @debug_exception_updates_fsr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
