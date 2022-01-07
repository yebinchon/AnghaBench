; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_fan.c_fan_get_state_acpi4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_fan.c_fan_get_state_acpi4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.acpi_fan = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_FST\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Get fan state failed\0A\00", align 1
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid _FST data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Invalid control value returned\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, i64*)* @fan_get_state_acpi4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_get_state_acpi4(%struct.acpi_device* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.acpi_buffer, align 8
  %7 = alloca %struct.acpi_fan*, align 8
  %8 = alloca %union.acpi_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %13 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %union.acpi_object*
  store %union.acpi_object* %15, %union.acpi_object** %12, align 8
  %16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 2
  store i32 0, i32* %17, align 8
  %18 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %19 = call %struct.acpi_fan* @acpi_driver_data(%struct.acpi_device* %18)
  store %struct.acpi_fan* %19, %struct.acpi_fan** %7, align 8
  %20 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @acpi_evaluate_object(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %6)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @ACPI_FAILURE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %29 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %143

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %34 = load %union.acpi_object*, %union.acpi_object** %33, align 8
  store %union.acpi_object* %34, %union.acpi_object** %8, align 8
  %35 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %36 = icmp ne %union.acpi_object* %35, null
  br i1 %36, label %37, label %59

37:                                               ; preds = %32
  %38 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %39 = bitcast %union.acpi_object* %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %59, label %43

43:                                               ; preds = %37
  %44 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %45 = bitcast %union.acpi_object* %44 to %struct.TYPE_8__*
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 3
  br i1 %48, label %59, label %49

49:                                               ; preds = %43
  %50 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %51 = bitcast %union.acpi_object* %50 to %struct.TYPE_8__*
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %49, %43, %37, %32
  %60 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %61 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %9, align 4
  br label %139

65:                                               ; preds = %49
  %66 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %67 = bitcast %union.acpi_object* %66 to %struct.TYPE_8__*
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %120, %65
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.acpi_fan*, %struct.acpi_fan** %7, align 8
  %77 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %123

80:                                               ; preds = %74
  %81 = load %struct.acpi_fan*, %struct.acpi_fan** %7, align 8
  %82 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %106

86:                                               ; preds = %80
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.acpi_fan*, %struct.acpi_fan** %7, align 8
  %89 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %88, i32 0, i32 1
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %87, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %86
  %98 = load i32, i32* %11, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %11, align 4
  %102 = sub nsw i32 %101, 1
  br label %104

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %100
  %105 = phi i32 [ %102, %100 ], [ 0, %103 ]
  store i32 %105, i32* %11, align 4
  br label %123

106:                                              ; preds = %86, %80
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.acpi_fan*, %struct.acpi_fan** %7, align 8
  %109 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %108, i32 0, i32 1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %107, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  br label %123

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %74

123:                                              ; preds = %117, %104, %74
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.acpi_fan*, %struct.acpi_fan** %7, align 8
  %126 = getelementptr inbounds %struct.acpi_fan, %struct.acpi_fan* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %124, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %131 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %130, i32 0, i32 0
  %132 = call i32 @dev_dbg(i32* %131, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %9, align 4
  br label %139

135:                                              ; preds = %123
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64*, i64** %5, align 8
  store i64 %137, i64* %138, align 8
  br label %139

139:                                              ; preds = %135, %129, %59
  %140 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %141 = call i32 @kfree(%union.acpi_object* %140)
  %142 = load i32, i32* %9, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %139, %27
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.acpi_fan* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
