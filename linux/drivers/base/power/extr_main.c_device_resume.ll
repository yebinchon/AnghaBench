; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_device_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_device_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32*, i32* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@wd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"power domain \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"type \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"class \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bus \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"legacy bus \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"driver \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32)* @device_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_resume(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @wd, align 4
  %11 = call i32 @DECLARE_DPM_WATCHDOG_ON_STACK(i32 %10)
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i32 @TRACE_DEVICE(%struct.device* %12)
  %14 = call i32 @TRACE_RESUME(i32 0)
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %172

21:                                               ; preds = %3
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i32 @pm_runtime_enable(%struct.device* %28)
  br label %172

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @dpm_wait_for_superior(%struct.device* %31, i32 %32)
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @dpm_watchdog_set(i32* @wd, %struct.device* %34)
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @device_lock(%struct.device* %36)
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %30
  br label %168

47:                                               ; preds = %30
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = getelementptr inbounds %struct.device, %struct.device* %48, i32 0, i32 5
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = icmp ne %struct.TYPE_7__* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 5
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %5, align 4
  %58 = call i32* @pm_op(i32* %56, i32 %57)
  store i32* %58, i32** %7, align 8
  br label %135

59:                                               ; preds = %47
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = getelementptr inbounds %struct.device, %struct.device* %60, i32 0, i32 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = icmp ne %struct.TYPE_8__* %62, null
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = getelementptr inbounds %struct.device, %struct.device* %65, i32 0, i32 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = getelementptr inbounds %struct.device, %struct.device* %72, i32 0, i32 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32* @pm_op(i32* %76, i32 %77)
  store i32* %78, i32** %7, align 8
  br label %135

79:                                               ; preds = %64, %59
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = getelementptr inbounds %struct.device, %struct.device* %80, i32 0, i32 3
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = icmp ne %struct.TYPE_9__* %82, null
  br i1 %83, label %84, label %99

84:                                               ; preds = %79
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = getelementptr inbounds %struct.device, %struct.device* %85, i32 0, i32 3
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %84
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = getelementptr inbounds %struct.device, %struct.device* %92, i32 0, i32 3
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32* @pm_op(i32* %96, i32 %97)
  store i32* %98, i32** %7, align 8
  br label %135

99:                                               ; preds = %84, %79
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = getelementptr inbounds %struct.device, %struct.device* %100, i32 0, i32 2
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = icmp ne %struct.TYPE_10__* %102, null
  br i1 %103, label %104, label %134

104:                                              ; preds = %99
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = getelementptr inbounds %struct.device, %struct.device* %105, i32 0, i32 2
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %119

111:                                              ; preds = %104
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = getelementptr inbounds %struct.device, %struct.device* %112, i32 0, i32 2
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i32* @pm_op(i32* %116, i32 %117)
  store i32* %118, i32** %7, align 8
  br label %133

119:                                              ; preds = %104
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = getelementptr inbounds %struct.device, %struct.device* %120, i32 0, i32 2
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %119
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  %127 = load %struct.device*, %struct.device** %4, align 8
  %128 = getelementptr inbounds %struct.device, %struct.device* %127, i32 0, i32 2
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  store i32* %131, i32** %7, align 8
  br label %159

132:                                              ; preds = %119
  br label %133

133:                                              ; preds = %132, %111
  br label %134

134:                                              ; preds = %133, %99
  br label %135

135:                                              ; preds = %134, %91, %71, %52
  %136 = load i32*, i32** %7, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %158, label %138

138:                                              ; preds = %135
  %139 = load %struct.device*, %struct.device** %4, align 8
  %140 = getelementptr inbounds %struct.device, %struct.device* %139, i32 0, i32 1
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = icmp ne %struct.TYPE_11__* %141, null
  br i1 %142, label %143, label %158

143:                                              ; preds = %138
  %144 = load %struct.device*, %struct.device** %4, align 8
  %145 = getelementptr inbounds %struct.device, %struct.device* %144, i32 0, i32 1
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %158

150:                                              ; preds = %143
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  %151 = load %struct.device*, %struct.device** %4, align 8
  %152 = getelementptr inbounds %struct.device, %struct.device* %151, i32 0, i32 1
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = call i32* @pm_op(i32* %155, i32 %156)
  store i32* %157, i32** %7, align 8
  br label %158

158:                                              ; preds = %150, %143, %138, %135
  br label %159

159:                                              ; preds = %158, %126
  %160 = load i32*, i32** %7, align 8
  %161 = load %struct.device*, %struct.device** %4, align 8
  %162 = load i32, i32* %5, align 4
  %163 = load i8*, i8** %8, align 8
  %164 = call i32 @dpm_run_callback(i32* %160, %struct.device* %161, i32 %162, i8* %163)
  store i32 %164, i32* %9, align 4
  %165 = load %struct.device*, %struct.device** %4, align 8
  %166 = getelementptr inbounds %struct.device, %struct.device* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  store i32 0, i32* %167, align 4
  br label %168

168:                                              ; preds = %159, %46
  %169 = load %struct.device*, %struct.device** %4, align 8
  %170 = call i32 @device_unlock(%struct.device* %169)
  %171 = call i32 @dpm_watchdog_clear(i32* @wd)
  br label %172

172:                                              ; preds = %168, %27, %20
  %173 = load %struct.device*, %struct.device** %4, align 8
  %174 = getelementptr inbounds %struct.device, %struct.device* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 2
  %176 = call i32 @complete_all(i32* %175)
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @TRACE_RESUME(i32 %177)
  %179 = load i32, i32* %9, align 4
  ret i32 %179
}

declare dso_local i32 @DECLARE_DPM_WATCHDOG_ON_STACK(i32) #1

declare dso_local i32 @TRACE_DEVICE(%struct.device*) #1

declare dso_local i32 @TRACE_RESUME(i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @dpm_wait_for_superior(%struct.device*, i32) #1

declare dso_local i32 @dpm_watchdog_set(i32*, %struct.device*) #1

declare dso_local i32 @device_lock(%struct.device*) #1

declare dso_local i32* @pm_op(i32*, i32) #1

declare dso_local i32 @dpm_run_callback(i32*, %struct.device*, i32, i8*) #1

declare dso_local i32 @device_unlock(%struct.device*) #1

declare dso_local i32 @dpm_watchdog_clear(i32*) #1

declare dso_local i32 @complete_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
