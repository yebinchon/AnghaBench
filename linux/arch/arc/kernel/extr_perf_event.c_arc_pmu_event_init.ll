; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_perf_event.c_arc_pmu_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_perf_event.c_arc_pmu_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.perf_event = type { %struct.TYPE_5__, %struct.hw_perf_event }
%struct.TYPE_5__ = type { i32, i64, i64, i64 }
%struct.hw_perf_event = type { i64, i32, i32, i32 }

@arc_pmu = common dso_local global %struct.TYPE_6__* null, align 8
@ARC_REG_PCT_CONFIG_KERN = common dso_local global i64 0, align 8
@ARC_REG_PCT_CONFIG_USER = common dso_local global i64 0, align 8
@PERF_COUNT_HW_MAX = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"init event %d with h/w %08x '%s'\0A\00", align 1
@arc_pmu_ev_hw_map = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"init cache event with h/w %08x '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"init raw event with idx %lld '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @arc_pmu_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arc_pmu_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 1
  store %struct.hw_perf_event* %7, %struct.hw_perf_event** %4, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = call i32 @is_sampling_event(%struct.perf_event* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @arc_pmu, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %16 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %18 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %21 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %23 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %22, i32 0, i32 2
  %24 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %25 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @local64_set(i32* %23, i32 %26)
  br label %28

28:                                               ; preds = %11, %1
  %29 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %30 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = call i64 (...) @is_isa_arcv2()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %28
  %34 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %35 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i64, i64* @ARC_REG_PCT_CONFIG_KERN, align 8
  %41 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %42 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = or i64 %43, %40
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %39, %33
  %46 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %47 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i64, i64* @ARC_REG_PCT_CONFIG_USER, align 8
  %53 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %54 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = or i64 %55, %52
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %51, %45
  br label %58

58:                                               ; preds = %57, %28
  %59 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %60 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %187 [
    i32 130, label %63
    i32 129, label %118
    i32 128, label %150
  ]

63:                                               ; preds = %58
  %64 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %65 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PERF_COUNT_HW_MAX, align 8
  %69 = icmp uge i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* @ENOENT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %190

73:                                               ; preds = %63
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @arc_pmu, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %78 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i64, i64* %76, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ult i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = load i32, i32* @ENOENT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %190

87:                                               ; preds = %73
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** @arc_pmu, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %92 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i64, i64* %90, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %98 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = or i64 %99, %96
  store i64 %100, i64* %98, align 8
  %101 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %102 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %107 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = load i32*, i32** @arc_pmu_ev_hw_map, align 8
  %111 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %112 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %105, i32 %109, i32 %116)
  store i32 0, i32* %2, align 4
  br label %190

118:                                              ; preds = %58
  %119 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %120 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @arc_pmu_cache_event(i64 %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = load i32, i32* %5, align 4
  store i32 %127, i32* %2, align 4
  br label %190

128:                                              ; preds = %118
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @arc_pmu, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %137 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = or i64 %138, %135
  store i64 %139, i64* %137, align 8
  %140 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %141 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = load i32*, i32** @arc_pmu_ev_hw_map, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %143, i32 %148)
  store i32 0, i32* %2, align 4
  br label %190

150:                                              ; preds = %58
  %151 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %152 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** @arc_pmu, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp uge i64 %154, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %150
  %160 = load i32, i32* @ENOENT, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %2, align 4
  br label %190

162:                                              ; preds = %150
  %163 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %164 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %168 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = or i64 %169, %166
  store i64 %170, i64* %168, align 8
  %171 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %172 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = trunc i64 %174 to i32
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** @arc_pmu, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %180 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %175, i32 %185)
  store i32 0, i32* %2, align 4
  br label %190

187:                                              ; preds = %58
  %188 = load i32, i32* @ENOENT, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %187, %162, %159, %128, %126, %87, %84, %70
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i32 @is_sampling_event(%struct.perf_event*) #1

declare dso_local i32 @local64_set(i32*, i32) #1

declare dso_local i64 @is_isa_arcv2(...) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @arc_pmu_cache_event(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
