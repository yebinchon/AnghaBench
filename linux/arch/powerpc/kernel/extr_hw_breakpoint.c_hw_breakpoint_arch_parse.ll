; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_hw_breakpoint.c_hw_breakpoint_arch_parse.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_hw_breakpoint.c_hw_breakpoint_arch_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.perf_event_attr = type { i32, i32, i32, i32, i32, i32 }
%struct.arch_hw_breakpoint = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@HW_BRK_TYPE_TRANSLATE = common dso_local global i32 0, align 4
@HW_BREAKPOINT_R = common dso_local global i32 0, align 4
@HW_BRK_TYPE_READ = common dso_local global i32 0, align 4
@HW_BREAKPOINT_W = common dso_local global i32 0, align 4
@HW_BRK_TYPE_WRITE = common dso_local global i32 0, align 4
@HW_BRK_TYPE_USER = common dso_local global i32 0, align 4
@HW_BRK_TYPE_KERNEL = common dso_local global i32 0, align 4
@HW_BRK_TYPE_HYP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@HW_BREAKPOINT_ALIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hw_breakpoint_arch_parse(%struct.perf_event* %0, %struct.perf_event_attr* %1, %struct.arch_hw_breakpoint* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.perf_event_attr*, align 8
  %7 = alloca %struct.arch_hw_breakpoint*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %5, align 8
  store %struct.perf_event_attr* %1, %struct.perf_event_attr** %6, align 8
  store %struct.arch_hw_breakpoint* %2, %struct.arch_hw_breakpoint** %7, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %13 = icmp ne %struct.perf_event* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %140

16:                                               ; preds = %3
  %17 = load i32, i32* @HW_BRK_TYPE_TRANSLATE, align 4
  %18 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %19 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %21 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HW_BREAKPOINT_R, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load i32, i32* @HW_BRK_TYPE_READ, align 4
  %28 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %29 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %16
  %33 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %34 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HW_BREAKPOINT_W, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* @HW_BRK_TYPE_WRITE, align 4
  %41 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %42 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %32
  %46 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %47 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @HW_BRK_TYPE_TRANSLATE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %140

53:                                               ; preds = %45
  %54 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %55 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @HW_BRK_TYPE_USER, align 4
  %60 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %61 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %66 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @HW_BRK_TYPE_KERNEL, align 4
  %71 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %72 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %64
  %76 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %77 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @HW_BRK_TYPE_HYP, align 4
  %82 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %83 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %80, %75
  %87 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %88 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %91 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %93 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %96 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = call i32 (...) @ppc_breakpoint_available()
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %86
  %100 = load i32, i32* @ENODEV, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %140

102:                                              ; preds = %86
  store i32 8, i32* %9, align 4
  %103 = call i64 (...) @dawr_enabled()
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %102
  store i32 512, i32* %9, align 4
  %106 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %107 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = ashr i32 %108, 9
  %110 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %111 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %114 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %112, %115
  %117 = sub nsw i32 %116, 1
  %118 = ashr i32 %117, 9
  %119 = icmp ne i32 %109, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %105
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %140

123:                                              ; preds = %105
  br label %124

124:                                              ; preds = %123, %102
  %125 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %126 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %130 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @HW_BREAKPOINT_ALIGN, align 4
  %133 = and i32 %131, %132
  %134 = sub nsw i32 %128, %133
  %135 = icmp sgt i32 %127, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %124
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %4, align 4
  br label %140

139:                                              ; preds = %124
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %139, %136, %120, %99, %51, %14
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @ppc_breakpoint_available(...) #1

declare dso_local i64 @dawr_enabled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
