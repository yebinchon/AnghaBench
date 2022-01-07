; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_sparc_pmu_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_sparc_pmu_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32, %struct.perf_event_map* (i64)* }
%struct.perf_event_map = type { i32 }
%struct.perf_event = type { i32, %struct.perf_event*, %struct.hw_perf_event, %struct.perf_event_attr }
%struct.hw_perf_event = type { i64, i64, i32, i64, i32, i32 }
%struct.perf_event_attr = type { i32, i64, i32, i32, i32 }

@MAX_HWEVENTS = common dso_local global i32 0, align 4
@nmi_active = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@sparc_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@PIC_NO_INDEX = common dso_local global i32 0, align 4
@hw_perf_event_destroy = common dso_local global i32 0, align 4
@MAX_PERIOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @sparc_pmu_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc_pmu_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_attr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hw_perf_event*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.perf_event_map*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 3
  store %struct.perf_event_attr* %14, %struct.perf_event_attr** %4, align 8
  %15 = load i32, i32* @MAX_HWEVENTS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %5, align 8
  %18 = alloca %struct.perf_event*, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %19 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %20 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %19, i32 0, i32 2
  store %struct.hw_perf_event* %20, %struct.hw_perf_event** %7, align 8
  %21 = load i32, i32* @MAX_HWEVENTS, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i64, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %24 = load i32, i32* @MAX_HWEVENTS, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  %27 = call i64 @atomic_read(i32* @nmi_active)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %210

32:                                               ; preds = %1
  %33 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %34 = call i64 @has_branch_stack(%struct.perf_event* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %210

39:                                               ; preds = %32
  %40 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %41 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %75 [
    i32 130, label %43
    i32 129, label %62
    i32 128, label %74
  ]

43:                                               ; preds = %39
  %44 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %45 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sparc_pmu, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp uge i64 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %210

54:                                               ; preds = %43
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sparc_pmu, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 6
  %57 = load %struct.perf_event_map* (i64)*, %struct.perf_event_map* (i64)** %56, align 8
  %58 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %59 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call %struct.perf_event_map* %57(i64 %60)
  store %struct.perf_event_map* %61, %struct.perf_event_map** %10, align 8
  br label %78

62:                                               ; preds = %39
  %63 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %64 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call %struct.perf_event_map* @sparc_map_cache_event(i64 %65)
  store %struct.perf_event_map* %66, %struct.perf_event_map** %10, align 8
  %67 = load %struct.perf_event_map*, %struct.perf_event_map** %10, align 8
  %68 = call i32 @IS_ERR(%struct.perf_event_map* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load %struct.perf_event_map*, %struct.perf_event_map** %10, align 8
  %72 = call i32 @PTR_ERR(%struct.perf_event_map* %71)
  store i32 %72, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %210

73:                                               ; preds = %62
  br label %78

74:                                               ; preds = %39
  store %struct.perf_event_map* null, %struct.perf_event_map** %10, align 8
  br label %78

75:                                               ; preds = %39
  %76 = load i32, i32* @ENOENT, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %210

78:                                               ; preds = %74, %73, %54
  %79 = load %struct.perf_event_map*, %struct.perf_event_map** %10, align 8
  %80 = icmp ne %struct.perf_event_map* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load %struct.perf_event_map*, %struct.perf_event_map** %10, align 8
  %83 = call i64 @perf_event_encode(%struct.perf_event_map* %82)
  %84 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %85 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %92

86:                                               ; preds = %78
  %87 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %88 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %91 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %86, %81
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sparc_pmu, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %97 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  %98 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %99 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %92
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sparc_pmu, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %107 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %102, %92
  %111 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %112 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %110
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sparc_pmu, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %120 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %115, %110
  %124 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %125 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %123
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sparc_pmu, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %133 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %128, %123
  store i32 0, i32* %11, align 4
  %137 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %138 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %137, i32 0, i32 1
  %139 = load %struct.perf_event*, %struct.perf_event** %138, align 8
  %140 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %141 = icmp ne %struct.perf_event* %139, %140
  br i1 %141, label %142, label %157

142:                                              ; preds = %136
  %143 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %144 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %143, i32 0, i32 1
  %145 = load %struct.perf_event*, %struct.perf_event** %144, align 8
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sparc_pmu, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = sub nsw i64 %148, 1
  %150 = call i32 @collect_events(%struct.perf_event* %145, i64 %149, %struct.perf_event** %18, i64* %23, i32* %26)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %142
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %210

156:                                              ; preds = %142
  br label %157

157:                                              ; preds = %156, %136
  %158 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %159 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %23, i64 %162
  store i64 %160, i64* %163, align 8
  %164 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %18, i64 %166
  store %struct.perf_event* %164, %struct.perf_event** %167, align 8
  %168 = load i32, i32* %11, align 4
  %169 = call i64 @check_excludes(%struct.perf_event** %18, i32 %168, i32 1)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %157
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %210

174:                                              ; preds = %157
  %175 = load i32, i32* %11, align 4
  %176 = add nsw i32 %175, 1
  %177 = call i64 @sparc_check_constraints(%struct.perf_event** %18, i64* %23, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %210

182:                                              ; preds = %174
  %183 = load i32, i32* @PIC_NO_INDEX, align 4
  %184 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %185 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 8
  %186 = call i32 (...) @perf_event_grab_pmc()
  %187 = load i32, i32* @hw_perf_event_destroy, align 4
  %188 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %189 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %191 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %209, label %194

194:                                              ; preds = %182
  %195 = load i64, i64* @MAX_PERIOD, align 8
  %196 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %197 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %196, i32 0, i32 1
  store i64 %195, i64* %197, align 8
  %198 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %199 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %202 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %201, i32 0, i32 3
  store i64 %200, i64* %202, align 8
  %203 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %204 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %203, i32 0, i32 2
  %205 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %206 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @local64_set(i32* %204, i64 %207)
  br label %209

209:                                              ; preds = %194, %182
  store i32 0, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %210

210:                                              ; preds = %209, %179, %171, %153, %75, %70, %51, %36, %29
  %211 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %211)
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @atomic_read(i32*) #2

declare dso_local i64 @has_branch_stack(%struct.perf_event*) #2

declare dso_local %struct.perf_event_map* @sparc_map_cache_event(i64) #2

declare dso_local i32 @IS_ERR(%struct.perf_event_map*) #2

declare dso_local i32 @PTR_ERR(%struct.perf_event_map*) #2

declare dso_local i64 @perf_event_encode(%struct.perf_event_map*) #2

declare dso_local i32 @collect_events(%struct.perf_event*, i64, %struct.perf_event**, i64*, i32*) #2

declare dso_local i64 @check_excludes(%struct.perf_event**, i32, i32) #2

declare dso_local i64 @sparc_check_constraints(%struct.perf_event**, i64*, i32) #2

declare dso_local i32 @perf_event_grab_pmc(...) #2

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
