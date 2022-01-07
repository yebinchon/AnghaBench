; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_domain.c___genpd_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_domain.c___genpd_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { {}* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { {}* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { {}* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @__genpd_runtime_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__genpd_runtime_suspend(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32 (%struct.device*)*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 3
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %7 = icmp ne %struct.TYPE_10__* %6, null
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 3
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %8
  %16 = load %struct.device*, %struct.device** %2, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 3
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.device*)**
  %23 = load i32 (%struct.device*)*, i32 (%struct.device*)** %22, align 8
  store i32 (%struct.device*)* %23, i32 (%struct.device*)** %3, align 8
  br label %69

24:                                               ; preds = %8, %1
  %25 = load %struct.device*, %struct.device** %2, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 2
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = icmp ne %struct.TYPE_12__* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = load %struct.device*, %struct.device** %2, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 2
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = icmp ne %struct.TYPE_11__* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.device*, %struct.device** %2, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 2
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = bitcast {}** %42 to i32 (%struct.device*)**
  %44 = load i32 (%struct.device*)*, i32 (%struct.device*)** %43, align 8
  store i32 (%struct.device*)* %44, i32 (%struct.device*)** %3, align 8
  br label %68

45:                                               ; preds = %29, %24
  %46 = load %struct.device*, %struct.device** %2, align 8
  %47 = getelementptr inbounds %struct.device, %struct.device* %46, i32 0, i32 1
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = icmp ne %struct.TYPE_14__* %48, null
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load %struct.device*, %struct.device** %2, align 8
  %52 = getelementptr inbounds %struct.device, %struct.device* %51, i32 0, i32 1
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = icmp ne %struct.TYPE_13__* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load %struct.device*, %struct.device** %2, align 8
  %59 = getelementptr inbounds %struct.device, %struct.device* %58, i32 0, i32 1
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = bitcast {}** %63 to i32 (%struct.device*)**
  %65 = load i32 (%struct.device*)*, i32 (%struct.device*)** %64, align 8
  store i32 (%struct.device*)* %65, i32 (%struct.device*)** %3, align 8
  br label %67

66:                                               ; preds = %50, %45
  store i32 (%struct.device*)* null, i32 (%struct.device*)** %3, align 8
  br label %67

67:                                               ; preds = %66, %57
  br label %68

68:                                               ; preds = %67, %36
  br label %69

69:                                               ; preds = %68, %15
  %70 = load i32 (%struct.device*)*, i32 (%struct.device*)** %3, align 8
  %71 = icmp ne i32 (%struct.device*)* %70, null
  br i1 %71, label %93, label %72

72:                                               ; preds = %69
  %73 = load %struct.device*, %struct.device** %2, align 8
  %74 = getelementptr inbounds %struct.device, %struct.device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = icmp ne %struct.TYPE_16__* %75, null
  br i1 %76, label %77, label %93

77:                                               ; preds = %72
  %78 = load %struct.device*, %struct.device** %2, align 8
  %79 = getelementptr inbounds %struct.device, %struct.device* %78, i32 0, i32 0
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %81, align 8
  %83 = icmp ne %struct.TYPE_15__* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load %struct.device*, %struct.device** %2, align 8
  %86 = getelementptr inbounds %struct.device, %struct.device* %85, i32 0, i32 0
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = bitcast {}** %90 to i32 (%struct.device*)**
  %92 = load i32 (%struct.device*)*, i32 (%struct.device*)** %91, align 8
  store i32 (%struct.device*)* %92, i32 (%struct.device*)** %3, align 8
  br label %93

93:                                               ; preds = %84, %77, %72, %69
  %94 = load i32 (%struct.device*)*, i32 (%struct.device*)** %3, align 8
  %95 = icmp ne i32 (%struct.device*)* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32 (%struct.device*)*, i32 (%struct.device*)** %3, align 8
  %98 = load %struct.device*, %struct.device** %2, align 8
  %99 = call i32 %97(%struct.device* %98)
  br label %101

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %96
  %102 = phi i32 [ %99, %96 ], [ 0, %100 ]
  ret i32 %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
