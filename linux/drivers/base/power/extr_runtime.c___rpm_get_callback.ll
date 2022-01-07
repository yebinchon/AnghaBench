; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_runtime.c___rpm_get_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_runtime.c___rpm_get_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 }
%struct.TYPE_8__ = type { %struct.dev_pm_ops* }
%struct.TYPE_7__ = type { %struct.dev_pm_ops* }
%struct.TYPE_6__ = type { %struct.dev_pm_ops }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.device*, i64)* @__rpm_get_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @__rpm_get_callback(%struct.device* %0, i64 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dev_pm_ops*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.dev_pm_ops* %15, %struct.dev_pm_ops** %6, align 8
  br label %74

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %25, align 8
  %27 = icmp ne %struct.dev_pm_ops* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 3
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %32, align 8
  store %struct.dev_pm_ops* %33, %struct.dev_pm_ops** %6, align 8
  br label %73

34:                                               ; preds = %21, %16
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 2
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = icmp ne %struct.TYPE_8__* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 2
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %43, align 8
  %45 = icmp ne %struct.dev_pm_ops* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %50, align 8
  store %struct.dev_pm_ops* %51, %struct.dev_pm_ops** %6, align 8
  br label %72

52:                                               ; preds = %39, %34
  %53 = load %struct.device*, %struct.device** %3, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = icmp ne %struct.TYPE_9__* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = getelementptr inbounds %struct.device, %struct.device* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %61, align 8
  %63 = icmp ne %struct.dev_pm_ops* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load %struct.device*, %struct.device** %3, align 8
  %66 = getelementptr inbounds %struct.device, %struct.device* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %68, align 8
  store %struct.dev_pm_ops* %69, %struct.dev_pm_ops** %6, align 8
  br label %71

70:                                               ; preds = %57, %52
  store %struct.dev_pm_ops* null, %struct.dev_pm_ops** %6, align 8
  br label %71

71:                                               ; preds = %70, %64
  br label %72

72:                                               ; preds = %71, %46
  br label %73

73:                                               ; preds = %72, %28
  br label %74

74:                                               ; preds = %73, %11
  %75 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %6, align 8
  %76 = icmp ne %struct.dev_pm_ops* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %6, align 8
  %79 = bitcast %struct.dev_pm_ops* %78 to i8*
  %80 = load i64, i64* %4, align 8
  %81 = getelementptr i8, i8* %79, i64 %80
  %82 = bitcast i8* %81 to i32**
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %5, align 8
  br label %85

84:                                               ; preds = %74
  store i32* null, i32** %5, align 8
  br label %85

85:                                               ; preds = %84, %77
  %86 = load i32*, i32** %5, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %111, label %88

88:                                               ; preds = %85
  %89 = load %struct.device*, %struct.device** %3, align 8
  %90 = getelementptr inbounds %struct.device, %struct.device* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = icmp ne %struct.TYPE_10__* %91, null
  br i1 %92, label %93, label %111

93:                                               ; preds = %88
  %94 = load %struct.device*, %struct.device** %3, align 8
  %95 = getelementptr inbounds %struct.device, %struct.device* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %93
  %101 = load %struct.device*, %struct.device** %3, align 8
  %102 = getelementptr inbounds %struct.device, %struct.device* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = load i64, i64* %4, align 8
  %108 = getelementptr i8, i8* %106, i64 %107
  %109 = bitcast i8* %108 to i32**
  %110 = load i32*, i32** %109, align 8
  store i32* %110, i32** %5, align 8
  br label %111

111:                                              ; preds = %100, %93, %88, %85
  %112 = load i32*, i32** %5, align 8
  ret i32* %112
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
