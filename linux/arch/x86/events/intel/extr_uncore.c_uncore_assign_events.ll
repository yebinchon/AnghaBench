; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.c_uncore_assign_events.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.c_uncore_assign_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { %struct.TYPE_3__**, %struct.event_constraint** }
%struct.TYPE_3__ = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }
%struct.event_constraint = type { i64*, i32 }

@UNCORE_PMC_IDX_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore_box*, i32*, i32)* @uncore_assign_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uncore_assign_events(%struct.intel_uncore_box* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.intel_uncore_box*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.event_constraint*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.hw_perf_event*, align 8
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @UNCORE_PMC_IDX_MAX, align 4
  %16 = call i32 @BITS_TO_LONGS(i32 %15)
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* @UNCORE_PMC_IDX_MAX, align 4
  %21 = call i32 @bitmap_zero(i64* %19, i32 %20)
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* @UNCORE_PMC_IDX_MAX, align 4
  store i32 %22, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %54, %3
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %29 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %30 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %31, i64 %33
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = call %struct.event_constraint* @uncore_get_event_constraint(%struct.intel_uncore_box* %28, %struct.TYPE_3__* %35)
  store %struct.event_constraint* %36, %struct.event_constraint** %9, align 8
  %37 = load %struct.event_constraint*, %struct.event_constraint** %9, align 8
  %38 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %39 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %38, i32 0, i32 1
  %40 = load %struct.event_constraint**, %struct.event_constraint*** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.event_constraint*, %struct.event_constraint** %40, i64 %42
  store %struct.event_constraint* %37, %struct.event_constraint** %43, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.event_constraint*, %struct.event_constraint** %9, align 8
  %46 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @min(i32 %44, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.event_constraint*, %struct.event_constraint** %9, align 8
  %51 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @max(i32 %49, i32 %52)
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %27
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %23

57:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %116, %57
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %119

62:                                               ; preds = %58
  %63 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %64 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %65, i64 %67
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store %struct.hw_perf_event* %70, %struct.hw_perf_event** %14, align 8
  %71 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %72 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %71, i32 0, i32 1
  %73 = load %struct.event_constraint**, %struct.event_constraint*** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.event_constraint*, %struct.event_constraint** %73, i64 %75
  %77 = load %struct.event_constraint*, %struct.event_constraint** %76, align 8
  store %struct.event_constraint* %77, %struct.event_constraint** %9, align 8
  %78 = load %struct.hw_perf_event*, %struct.hw_perf_event** %14, align 8
  %79 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %83

82:                                               ; preds = %62
  br label %119

83:                                               ; preds = %62
  %84 = load %struct.hw_perf_event*, %struct.hw_perf_event** %14, align 8
  %85 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.event_constraint*, %struct.event_constraint** %9, align 8
  %88 = getelementptr inbounds %struct.event_constraint, %struct.event_constraint* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = call i64 @test_bit(i32 %86, i64* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %83
  br label %119

93:                                               ; preds = %83
  %94 = load %struct.hw_perf_event*, %struct.hw_perf_event** %14, align 8
  %95 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @test_bit(i32 %96, i64* %19)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %119

100:                                              ; preds = %93
  %101 = load %struct.hw_perf_event*, %struct.hw_perf_event** %14, align 8
  %102 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @__set_bit(i32 %103, i64* %19)
  %105 = load i32*, i32** %5, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = load %struct.hw_perf_event*, %struct.hw_perf_event** %14, align 8
  %109 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %110, i32* %114, align 4
  br label %115

115:                                              ; preds = %107, %100
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %58

119:                                              ; preds = %99, %92, %82, %58
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %119
  %124 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %125 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %124, i32 0, i32 1
  %126 = load %struct.event_constraint**, %struct.event_constraint*** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i32*, i32** %5, align 8
  %132 = call i32 @perf_assign_events(%struct.event_constraint** %126, i32 %127, i32 %128, i32 %129, i32 %130, i32* %131)
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %123, %119
  %134 = load i32*, i32** %5, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %158

139:                                              ; preds = %136, %133
  store i32 0, i32* %10, align 4
  br label %140

140:                                              ; preds = %154, %139
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %140
  %145 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %146 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %147 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %146, i32 0, i32 0
  %148 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %148, i64 %150
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = call i32 @uncore_put_event_constraint(%struct.intel_uncore_box* %145, %struct.TYPE_3__* %152)
  br label %154

154:                                              ; preds = %144
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %140

157:                                              ; preds = %140
  br label %158

158:                                              ; preds = %157, %136
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  br label %165

164:                                              ; preds = %158
  br label %165

165:                                              ; preds = %164, %161
  %166 = phi i32 [ %163, %161 ], [ 0, %164 ]
  %167 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %167)
  ret i32 %166
}

declare dso_local i32 @BITS_TO_LONGS(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @bitmap_zero(i64*, i32) #1

declare dso_local %struct.event_constraint* @uncore_get_event_constraint(%struct.intel_uncore_box*, %struct.TYPE_3__*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @perf_assign_events(%struct.event_constraint**, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @uncore_put_event_constraint(%struct.intel_uncore_box*, %struct.TYPE_3__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
