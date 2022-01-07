; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_device_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_device_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_13__*, %struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_16__*, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { void (%struct.device*)* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { void (%struct.device*)* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { void (%struct.device*)* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { void (%struct.device*)* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { void (%struct.device*)* }
%struct.TYPE_14__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"completing power domain \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"completing type \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"completing class \00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"completing bus \00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"completing driver \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @device_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_complete(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca void (%struct.device*)*, align 8
  %6 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  store void (%struct.device*)* null, void (%struct.device*)** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %128

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call i32 @device_lock(%struct.device* %14)
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = icmp ne %struct.TYPE_16__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load void (%struct.device*)*, void (%struct.device*)** %25, align 8
  store void (%struct.device*)* %26, void (%struct.device*)** %5, align 8
  br label %90

27:                                               ; preds = %13
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 3
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = icmp ne %struct.TYPE_18__* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 3
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %38 = icmp ne %struct.TYPE_17__* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 3
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load void (%struct.device*)*, void (%struct.device*)** %45, align 8
  store void (%struct.device*)* %46, void (%struct.device*)** %5, align 8
  br label %89

47:                                               ; preds = %32, %27
  %48 = load %struct.device*, %struct.device** %3, align 8
  %49 = getelementptr inbounds %struct.device, %struct.device* %48, i32 0, i32 2
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  %51 = icmp ne %struct.TYPE_20__* %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load %struct.device*, %struct.device** %3, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 2
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %56, align 8
  %58 = icmp ne %struct.TYPE_19__* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = getelementptr inbounds %struct.device, %struct.device* %60, i32 0, i32 2
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load void (%struct.device*)*, void (%struct.device*)** %65, align 8
  store void (%struct.device*)* %66, void (%struct.device*)** %5, align 8
  br label %88

67:                                               ; preds = %52, %47
  %68 = load %struct.device*, %struct.device** %3, align 8
  %69 = getelementptr inbounds %struct.device, %struct.device* %68, i32 0, i32 1
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %69, align 8
  %71 = icmp ne %struct.TYPE_22__* %70, null
  br i1 %71, label %72, label %87

72:                                               ; preds = %67
  %73 = load %struct.device*, %struct.device** %3, align 8
  %74 = getelementptr inbounds %struct.device, %struct.device* %73, i32 0, i32 1
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %76, align 8
  %78 = icmp ne %struct.TYPE_21__* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  %80 = load %struct.device*, %struct.device** %3, align 8
  %81 = getelementptr inbounds %struct.device, %struct.device* %80, i32 0, i32 1
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = load void (%struct.device*)*, void (%struct.device*)** %85, align 8
  store void (%struct.device*)* %86, void (%struct.device*)** %5, align 8
  br label %87

87:                                               ; preds = %79, %72, %67
  br label %88

88:                                               ; preds = %87, %59
  br label %89

89:                                               ; preds = %88, %39
  br label %90

90:                                               ; preds = %89, %20
  %91 = load void (%struct.device*)*, void (%struct.device*)** %5, align 8
  %92 = icmp ne void (%struct.device*)* %91, null
  br i1 %92, label %113, label %93

93:                                               ; preds = %90
  %94 = load %struct.device*, %struct.device** %3, align 8
  %95 = getelementptr inbounds %struct.device, %struct.device* %94, i32 0, i32 0
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = icmp ne %struct.TYPE_13__* %96, null
  br i1 %97, label %98, label %113

98:                                               ; preds = %93
  %99 = load %struct.device*, %struct.device** %3, align 8
  %100 = getelementptr inbounds %struct.device, %struct.device* %99, i32 0, i32 0
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = icmp ne %struct.TYPE_12__* %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %98
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  %106 = load %struct.device*, %struct.device** %3, align 8
  %107 = getelementptr inbounds %struct.device, %struct.device* %106, i32 0, i32 0
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load void (%struct.device*)*, void (%struct.device*)** %111, align 8
  store void (%struct.device*)* %112, void (%struct.device*)** %5, align 8
  br label %113

113:                                              ; preds = %105, %98, %93, %90
  %114 = load void (%struct.device*)*, void (%struct.device*)** %5, align 8
  %115 = icmp ne void (%struct.device*)* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load %struct.device*, %struct.device** %3, align 8
  %118 = load i32, i32* %4, align 4
  %119 = load i8*, i8** %6, align 8
  %120 = call i32 @pm_dev_dbg(%struct.device* %117, i32 %118, i8* %119)
  %121 = load void (%struct.device*)*, void (%struct.device*)** %5, align 8
  %122 = load %struct.device*, %struct.device** %3, align 8
  call void %121(%struct.device* %122)
  br label %123

123:                                              ; preds = %116, %113
  %124 = load %struct.device*, %struct.device** %3, align 8
  %125 = call i32 @device_unlock(%struct.device* %124)
  %126 = load %struct.device*, %struct.device** %3, align 8
  %127 = call i32 @pm_runtime_put(%struct.device* %126)
  br label %128

128:                                              ; preds = %123, %12
  ret void
}

declare dso_local i32 @device_lock(%struct.device*) #1

declare dso_local i32 @pm_dev_dbg(%struct.device*, i32, i8*) #1

declare dso_local i32 @device_unlock(%struct.device*) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
