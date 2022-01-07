; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_device_pm.c_acpi_device_get_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_device_pm.c_acpi_device_get_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.TYPE_7__ = type { i32 }

@ACPI_STATE_UNKNOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ACPI_STATE_D0 = common dso_local global i32 0, align 4
@ACPI_STATE_D3_COLD = common dso_local global i32 0, align 4
@ACPI_STATE_D2 = common dso_local global i32 0, align 4
@ACPI_STATE_D3_HOT = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Device [%s] power state is %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_device_get_power(%struct.acpi_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @ACPI_STATE_UNKNOWN, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %11 = icmp ne %struct.acpi_device* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %141

18:                                               ; preds = %12
  %19 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %18
  %25 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %26 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = icmp ne %struct.TYPE_11__* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %31 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  br label %38

36:                                               ; preds = %24
  %37 = load i32, i32* @ACPI_STATE_D0, align 4
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi i32 [ %35, %29 ], [ %37, %36 ]
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %131

41:                                               ; preds = %18
  %42 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %43 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %50 = call i32 @acpi_power_get_inferred_state(%struct.acpi_device* %49, i32* %6)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %141

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %41
  %57 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %58 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %96

63:                                               ; preds = %56
  %64 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %65 = call i32 @acpi_dev_pm_explicit_get(%struct.acpi_device* %64, i32* %8)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %141

70:                                               ; preds = %63
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @ACPI_STATE_D3_COLD, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %6, align 4
  br label %95

80:                                               ; preds = %74, %70
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @ACPI_STATE_UNKNOWN, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @ACPI_STATE_D2, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* @ACPI_STATE_D3_HOT, align 4
  br label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %8, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %92, %80
  br label %95

95:                                               ; preds = %94, %78
  br label %96

96:                                               ; preds = %95, %56
  %97 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %98 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %128, label %103

103:                                              ; preds = %96
  %104 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %105 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %104, i32 0, i32 1
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = icmp ne %struct.TYPE_11__* %106, null
  br i1 %107, label %108, label %128

108:                                              ; preds = %103
  %109 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %110 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %109, i32 0, i32 1
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @ACPI_STATE_UNKNOWN, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %108
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @ACPI_STATE_D0, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %117
  %122 = load i32, i32* @ACPI_STATE_D0, align 4
  %123 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %124 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %123, i32 0, i32 1
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  store i32 %122, i32* %127, align 4
  br label %128

128:                                              ; preds = %121, %117, %108, %103, %96
  %129 = load i32, i32* %6, align 4
  %130 = load i32*, i32** %5, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %38
  %132 = load i32, i32* @ACPI_DB_INFO, align 4
  %133 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %134 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32*, i32** %5, align 8
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @acpi_power_state_string(i32 %138)
  %140 = call i32 @ACPI_DEBUG_PRINT(i32 %139)
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %131, %68, %53, %15
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @acpi_power_get_inferred_state(%struct.acpi_device*, i32*) #1

declare dso_local i32 @acpi_dev_pm_explicit_get(%struct.acpi_device*, i32*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_power_state_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
