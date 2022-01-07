; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_device_pm_check_callbacks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_device_pm_check_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @device_pm_check_callbacks(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %3 = load %struct.device*, %struct.device** %2, align 8
  %4 = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %6 = call i32 @spin_lock_irq(i32* %5)
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 5
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = icmp ne %struct.TYPE_7__* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load %struct.device*, %struct.device** %2, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 5
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @pm_ops_is_empty(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %103

19:                                               ; preds = %11
  %20 = load %struct.device*, %struct.device** %2, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 5
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %103, label %26

26:                                               ; preds = %19
  %27 = load %struct.device*, %struct.device** %2, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 5
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %103, label %33

33:                                               ; preds = %26, %1
  %34 = load %struct.device*, %struct.device** %2, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = icmp ne %struct.TYPE_8__* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.device*, %struct.device** %2, align 8
  %40 = getelementptr inbounds %struct.device, %struct.device* %39, i32 0, i32 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @pm_ops_is_empty(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %103

46:                                               ; preds = %38, %33
  %47 = load %struct.device*, %struct.device** %2, align 8
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 3
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = icmp ne %struct.TYPE_9__* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.device*, %struct.device** %2, align 8
  %53 = getelementptr inbounds %struct.device, %struct.device* %52, i32 0, i32 3
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @pm_ops_is_empty(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %103

59:                                               ; preds = %51, %46
  %60 = load %struct.device*, %struct.device** %2, align 8
  %61 = getelementptr inbounds %struct.device, %struct.device* %60, i32 0, i32 2
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = icmp ne %struct.TYPE_10__* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.device*, %struct.device** %2, align 8
  %66 = getelementptr inbounds %struct.device, %struct.device* %65, i32 0, i32 2
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = call i64 @pm_ops_is_empty(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %103

71:                                               ; preds = %64, %59
  %72 = load %struct.device*, %struct.device** %2, align 8
  %73 = getelementptr inbounds %struct.device, %struct.device* %72, i32 0, i32 1
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = icmp ne %struct.TYPE_11__* %74, null
  br i1 %75, label %76, label %101

76:                                               ; preds = %71
  %77 = load %struct.device*, %struct.device** %2, align 8
  %78 = getelementptr inbounds %struct.device, %struct.device* %77, i32 0, i32 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i64 @pm_ops_is_empty(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %76
  %85 = load %struct.device*, %struct.device** %2, align 8
  %86 = getelementptr inbounds %struct.device, %struct.device* %85, i32 0, i32 1
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %84
  %92 = load %struct.device*, %struct.device** %2, align 8
  %93 = getelementptr inbounds %struct.device, %struct.device* %92, i32 0, i32 1
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  br label %99

99:                                               ; preds = %91, %84, %76
  %100 = phi i1 [ false, %84 ], [ false, %76 ], [ %98, %91 ]
  br label %101

101:                                              ; preds = %99, %71
  %102 = phi i1 [ true, %71 ], [ %100, %99 ]
  br label %103

103:                                              ; preds = %101, %64, %51, %38, %26, %19, %11
  %104 = phi i1 [ false, %64 ], [ false, %51 ], [ false, %38 ], [ false, %26 ], [ false, %19 ], [ false, %11 ], [ %102, %101 ]
  %105 = zext i1 %104 to i32
  %106 = load %struct.device*, %struct.device** %2, align 8
  %107 = getelementptr inbounds %struct.device, %struct.device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  %109 = load %struct.device*, %struct.device** %2, align 8
  %110 = getelementptr inbounds %struct.device, %struct.device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = call i32 @spin_unlock_irq(i32* %111)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @pm_ops_is_empty(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
