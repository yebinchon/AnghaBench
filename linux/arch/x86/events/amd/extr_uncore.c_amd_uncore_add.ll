; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_uncore.c_amd_uncore_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_uncore.c_amd_uncore_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32, i64, i64, i64 }
%struct.amd_uncore = type { i32, i64, i64, %struct.perf_event** }

@EBUSY = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@PERF_EF_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @amd_uncore_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_uncore_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amd_uncore*, align 8
  %8 = alloca %struct.hw_perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %10 = call %struct.amd_uncore* @event_to_amd_uncore(%struct.perf_event* %9)
  store %struct.amd_uncore* %10, %struct.amd_uncore** %7, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 0
  store %struct.hw_perf_event* %12, %struct.hw_perf_event** %8, align 8
  %13 = load %struct.hw_perf_event*, %struct.hw_perf_event** %8, align 8
  %14 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.amd_uncore*, %struct.amd_uncore** %7, align 8
  %19 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %18, i32 0, i32 3
  %20 = load %struct.perf_event**, %struct.perf_event*** %19, align 8
  %21 = load %struct.hw_perf_event*, %struct.hw_perf_event** %8, align 8
  %22 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %20, i64 %24
  %26 = load %struct.perf_event*, %struct.perf_event** %25, align 8
  %27 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %28 = icmp eq %struct.perf_event* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %83

30:                                               ; preds = %17, %2
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %52, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.amd_uncore*, %struct.amd_uncore** %7, align 8
  %34 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %31
  %38 = load %struct.amd_uncore*, %struct.amd_uncore** %7, align 8
  %39 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %38, i32 0, i32 3
  %40 = load %struct.perf_event**, %struct.perf_event*** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %40, i64 %42
  %44 = load %struct.perf_event*, %struct.perf_event** %43, align 8
  %45 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %46 = icmp eq %struct.perf_event* %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.hw_perf_event*, %struct.hw_perf_event** %8, align 8
  %50 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %83

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %31

55:                                               ; preds = %31
  %56 = load %struct.hw_perf_event*, %struct.hw_perf_event** %8, align 8
  %57 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %56, i32 0, i32 0
  store i32 -1, i32* %57, align 8
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %79, %55
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.amd_uncore*, %struct.amd_uncore** %7, align 8
  %61 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = load %struct.amd_uncore*, %struct.amd_uncore** %7, align 8
  %66 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %65, i32 0, i32 3
  %67 = load %struct.perf_event**, %struct.perf_event*** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %67, i64 %69
  %71 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %72 = call i32* @cmpxchg(%struct.perf_event** %70, i32* null, %struct.perf_event* %71)
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %64
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.hw_perf_event*, %struct.hw_perf_event** %8, align 8
  %77 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %82

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %58

82:                                               ; preds = %74, %58
  br label %83

83:                                               ; preds = %82, %47, %29
  %84 = load %struct.hw_perf_event*, %struct.hw_perf_event** %8, align 8
  %85 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @EBUSY, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %139

91:                                               ; preds = %83
  %92 = load %struct.amd_uncore*, %struct.amd_uncore** %7, align 8
  %93 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.hw_perf_event*, %struct.hw_perf_event** %8, align 8
  %96 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = mul nsw i32 2, %97
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %94, %99
  %101 = load %struct.hw_perf_event*, %struct.hw_perf_event** %8, align 8
  %102 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %101, i32 0, i32 4
  store i64 %100, i64* %102, align 8
  %103 = load %struct.amd_uncore*, %struct.amd_uncore** %7, align 8
  %104 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 1
  %107 = load %struct.hw_perf_event*, %struct.hw_perf_event** %8, align 8
  %108 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = mul nsw i32 2, %109
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %106, %111
  %113 = load %struct.hw_perf_event*, %struct.hw_perf_event** %8, align 8
  %114 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %113, i32 0, i32 3
  store i64 %112, i64* %114, align 8
  %115 = load %struct.amd_uncore*, %struct.amd_uncore** %7, align 8
  %116 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.hw_perf_event*, %struct.hw_perf_event** %8, align 8
  %119 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %117, %121
  %123 = load %struct.hw_perf_event*, %struct.hw_perf_event** %8, align 8
  %124 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %123, i32 0, i32 2
  store i64 %122, i64* %124, align 8
  %125 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %126 = load i32, i32* @PERF_HES_STOPPED, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.hw_perf_event*, %struct.hw_perf_event** %8, align 8
  %129 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @PERF_EF_START, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %91
  %135 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %136 = load i32, i32* @PERF_EF_RELOAD, align 4
  %137 = call i32 @amd_uncore_start(%struct.perf_event* %135, i32 %136)
  br label %138

138:                                              ; preds = %134, %91
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %88
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.amd_uncore* @event_to_amd_uncore(%struct.perf_event*) #1

declare dso_local i32* @cmpxchg(%struct.perf_event**, i32*, %struct.perf_event*) #1

declare dso_local i32 @amd_uncore_start(%struct.perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
