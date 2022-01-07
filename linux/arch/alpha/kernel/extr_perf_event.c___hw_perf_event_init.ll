; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c___hw_perf_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c___hw_perf_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32*, i64*, i64, i32 (i64)* }
%struct.perf_event = type { i32, %struct.perf_event*, %struct.hw_perf_event, %struct.perf_event_attr }
%struct.hw_perf_event = type { i32, i64, i32, i64, i32, i64 }
%struct.perf_event_attr = type { i64, i64 }

@MAX_HWEVENTS = common dso_local global i32 0, align 4
@PERF_TYPE_HARDWARE = common dso_local global i64 0, align 8
@alpha_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@PERF_TYPE_HW_CACHE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@PERF_TYPE_RAW = common dso_local global i64 0, align 8
@PMC_NO_INDEX = common dso_local global i32 0, align 4
@hw_perf_event_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @__hw_perf_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hw_perf_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_attr*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 3
  store %struct.perf_event_attr* %14, %struct.perf_event_attr** %4, align 8
  %15 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 2
  store %struct.hw_perf_event* %16, %struct.hw_perf_event** %5, align 8
  %17 = load i32, i32* @MAX_HWEVENTS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca %struct.perf_event*, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load i32, i32* @MAX_HWEVENTS, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i64, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %24 = load i32, i32* @MAX_HWEVENTS, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  %27 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %28 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PERF_TYPE_HARDWARE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %1
  %33 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %34 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @alpha_pmu, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp uge i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %170

43:                                               ; preds = %32
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @alpha_pmu, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %48 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  br label %89

52:                                               ; preds = %1
  %53 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %54 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PERF_TYPE_HW_CACHE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %170

61:                                               ; preds = %52
  %62 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %63 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PERF_TYPE_RAW, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %61
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @alpha_pmu, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  %70 = load i32 (i64)*, i32 (i64)** %69, align 8
  %71 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %72 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 %70(i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %170

79:                                               ; preds = %67
  %80 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %81 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %10, align 4
  br label %87

84:                                               ; preds = %61
  %85 = load i32, i32* @EOPNOTSUPP, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %170

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87
  br label %89

89:                                               ; preds = %88, %43
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %170

94:                                               ; preds = %89
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %97 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  store i32 0, i32* %11, align 4
  %98 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %99 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %98, i32 0, i32 1
  %100 = load %struct.perf_event*, %struct.perf_event** %99, align 8
  %101 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %102 = icmp ne %struct.perf_event* %100, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %94
  %104 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %105 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %104, i32 0, i32 1
  %106 = load %struct.perf_event*, %struct.perf_event** %105, align 8
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @alpha_pmu, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %109, 1
  %111 = call i32 @collect_events(%struct.perf_event* %106, i64 %110, %struct.perf_event** %20, i64* %23, i32* %26)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %103
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %170

117:                                              ; preds = %103
  br label %118

118:                                              ; preds = %117, %94
  %119 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %120 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %23, i64 %124
  store i64 %122, i64* %125, align 8
  %126 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %20, i64 %128
  store %struct.perf_event* %126, %struct.perf_event** %129, align 8
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  %132 = call i64 @alpha_check_constraints(%struct.perf_event** %20, i64* %23, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %118
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %170

137:                                              ; preds = %118
  %138 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %139 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %138, i32 0, i32 5
  store i64 0, i64* %139, align 8
  %140 = load i32, i32* @PMC_NO_INDEX, align 4
  %141 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %142 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* @hw_perf_event_destroy, align 4
  %144 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %145 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %147 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %169, label %150

150:                                              ; preds = %137
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @alpha_pmu, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 2
  %153 = load i64*, i64** %152, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %157 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %156, i32 0, i32 1
  store i64 %155, i64* %157, align 8
  %158 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %159 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %162 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %161, i32 0, i32 3
  store i64 %160, i64* %162, align 8
  %163 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %164 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %163, i32 0, i32 2
  %165 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %166 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @local64_set(i32* %164, i64 %167)
  br label %169

169:                                              ; preds = %150, %137
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %170

170:                                              ; preds = %169, %134, %114, %92, %84, %76, %58, %40
  %171 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @collect_events(%struct.perf_event*, i64, %struct.perf_event**, i64*, i32*) #2

declare dso_local i64 @alpha_check_constraints(%struct.perf_event**, i64*, i32) #2

declare dso_local i32 @local64_set(i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
