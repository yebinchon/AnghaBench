; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_action_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_104-quad-8.c_quad8_action_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.quad8_iio* }
%struct.quad8_iio = type { i64* }
%struct.counter_count = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.counter_synapse = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@QUAD8_SYNAPSE_ACTION_RISING_EDGE = common dso_local global i64 0, align 8
@QUAD8_SYNAPSE_ACTION_NONE = common dso_local global i64 0, align 8
@COUNTER_COUNT_DIRECTION_FORWARD = common dso_local global i32 0, align 4
@QUAD8_SYNAPSE_ACTION_FALLING_EDGE = common dso_local global i64 0, align 8
@QUAD8_SYNAPSE_ACTION_BOTH_EDGES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_count*, %struct.counter_synapse*, i64*)* @quad8_action_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quad8_action_get(%struct.counter_device* %0, %struct.counter_count* %1, %struct.counter_synapse* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.counter_device*, align 8
  %7 = alloca %struct.counter_count*, align 8
  %8 = alloca %struct.counter_synapse*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.quad8_iio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.counter_device* %0, %struct.counter_device** %6, align 8
  store %struct.counter_count* %1, %struct.counter_count** %7, align 8
  store %struct.counter_synapse* %2, %struct.counter_synapse** %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load %struct.counter_device*, %struct.counter_device** %6, align 8
  %16 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %15, i32 0, i32 0
  %17 = load %struct.quad8_iio*, %struct.quad8_iio** %16, align 8
  store %struct.quad8_iio* %17, %struct.quad8_iio** %10, align 8
  store i64 0, i64* %12, align 8
  %18 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %19 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %13, align 8
  %26 = load %struct.counter_synapse*, %struct.counter_synapse** %8, align 8
  %27 = getelementptr inbounds %struct.counter_synapse, %struct.counter_synapse* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 16
  br i1 %31, label %32, label %49

32:                                               ; preds = %4
  %33 = load %struct.quad8_iio*, %struct.quad8_iio** %10, align 8
  %34 = getelementptr inbounds %struct.quad8_iio, %struct.quad8_iio* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %37 = getelementptr inbounds %struct.counter_count, %struct.counter_count* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i64, i64* %35, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i64, i64* @QUAD8_SYNAPSE_ACTION_RISING_EDGE, align 8
  %44 = load i64*, i64** %9, align 8
  store i64 %43, i64* %44, align 8
  br label %48

45:                                               ; preds = %32
  %46 = load i64, i64* @QUAD8_SYNAPSE_ACTION_NONE, align 8
  %47 = load i64*, i64** %9, align 8
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %42
  store i32 0, i32* %5, align 4
  br label %115

49:                                               ; preds = %4
  %50 = load %struct.counter_device*, %struct.counter_device** %6, align 8
  %51 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %52 = call i32 @quad8_function_get(%struct.counter_device* %50, %struct.counter_count* %51, i64* %12)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %5, align 4
  br label %115

57:                                               ; preds = %49
  %58 = load i64, i64* @QUAD8_SYNAPSE_ACTION_NONE, align 8
  %59 = load i64*, i64** %9, align 8
  store i64 %58, i64* %59, align 8
  %60 = load i64, i64* %12, align 8
  switch i64 %60, label %114 [
    i64 131, label %61
    i64 130, label %74
    i64 129, label %98
    i64 128, label %111
  ]

61:                                               ; preds = %57
  %62 = load %struct.counter_synapse*, %struct.counter_synapse** %8, align 8
  %63 = getelementptr inbounds %struct.counter_synapse, %struct.counter_synapse* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %13, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i64, i64* @QUAD8_SYNAPSE_ACTION_RISING_EDGE, align 8
  %72 = load i64*, i64** %9, align 8
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %70, %61
  br label %114

74:                                               ; preds = %57
  %75 = load %struct.counter_synapse*, %struct.counter_synapse** %8, align 8
  %76 = getelementptr inbounds %struct.counter_synapse, %struct.counter_synapse* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %13, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %74
  %84 = load %struct.counter_device*, %struct.counter_device** %6, align 8
  %85 = load %struct.counter_count*, %struct.counter_count** %7, align 8
  %86 = call i32 @quad8_direction_get(%struct.counter_device* %84, %struct.counter_count* %85, i32* %14)
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @COUNTER_COUNT_DIRECTION_FORWARD, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i64, i64* @QUAD8_SYNAPSE_ACTION_RISING_EDGE, align 8
  %92 = load i64*, i64** %9, align 8
  store i64 %91, i64* %92, align 8
  br label %96

93:                                               ; preds = %83
  %94 = load i64, i64* @QUAD8_SYNAPSE_ACTION_FALLING_EDGE, align 8
  %95 = load i64*, i64** %9, align 8
  store i64 %94, i64* %95, align 8
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96, %74
  br label %114

98:                                               ; preds = %57
  %99 = load %struct.counter_synapse*, %struct.counter_synapse** %8, align 8
  %100 = getelementptr inbounds %struct.counter_synapse, %struct.counter_synapse* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %13, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = load i64, i64* @QUAD8_SYNAPSE_ACTION_BOTH_EDGES, align 8
  %109 = load i64*, i64** %9, align 8
  store i64 %108, i64* %109, align 8
  br label %110

110:                                              ; preds = %107, %98
  br label %114

111:                                              ; preds = %57
  %112 = load i64, i64* @QUAD8_SYNAPSE_ACTION_BOTH_EDGES, align 8
  %113 = load i64*, i64** %9, align 8
  store i64 %112, i64* %113, align 8
  br label %114

114:                                              ; preds = %57, %111, %110, %97, %73
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %114, %55, %48
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @quad8_function_get(%struct.counter_device*, %struct.counter_count*, i64*) #1

declare dso_local i32 @quad8_direction_get(%struct.counter_device*, %struct.counter_count*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
