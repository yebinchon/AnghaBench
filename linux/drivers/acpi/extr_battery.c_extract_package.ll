; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_battery.c_extract_package.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_battery.c_extract_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_battery = type { i32 }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %union.acpi_object* }
%struct.acpi_offsets = type { i32, i64 }
%struct.TYPE_5__ = type { i64* }
%struct.TYPE_6__ = type { i32 }

@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@ACPI_TYPE_STRING = common dso_local global i64 0, align 8
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_battery*, %union.acpi_object*, %struct.acpi_offsets*, i32)* @extract_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_package(%struct.acpi_battery* %0, %union.acpi_object* %1, %struct.acpi_offsets* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_battery*, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca %struct.acpi_offsets*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.acpi_object*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  store %struct.acpi_battery* %0, %struct.acpi_battery** %6, align 8
  store %union.acpi_object* %1, %union.acpi_object** %7, align 8
  store %struct.acpi_offsets* %2, %struct.acpi_offsets** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %15 = bitcast %union.acpi_object* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EFAULT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %131

22:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %127, %22
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %130

27:                                               ; preds = %23
  %28 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %29 = bitcast %union.acpi_object* %28 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EFAULT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %131

37:                                               ; preds = %27
  %38 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %39 = bitcast %union.acpi_object* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %union.acpi_object*, %union.acpi_object** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %41, i64 %43
  store %union.acpi_object* %44, %union.acpi_object** %11, align 8
  %45 = load %struct.acpi_offsets*, %struct.acpi_offsets** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.acpi_offsets, %struct.acpi_offsets* %45, i64 %47
  %49 = getelementptr inbounds %struct.acpi_offsets, %struct.acpi_offsets* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %100

52:                                               ; preds = %37
  %53 = load %struct.acpi_battery*, %struct.acpi_battery** %6, align 8
  %54 = bitcast %struct.acpi_battery* %53 to i64*
  %55 = load %struct.acpi_offsets*, %struct.acpi_offsets** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.acpi_offsets, %struct.acpi_offsets* %55, i64 %57
  %59 = getelementptr inbounds %struct.acpi_offsets, %struct.acpi_offsets* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %54, i64 %61
  store i64* %62, i64** %12, align 8
  %63 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %64 = bitcast %union.acpi_object* %63 to i64*
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ACPI_TYPE_STRING, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %52
  %69 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %70 = bitcast %union.acpi_object* %69 to i64*
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %68, %52
  %75 = load i64*, i64** %12, align 8
  %76 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %77 = bitcast %union.acpi_object* %76 to %struct.TYPE_5__*
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = call i32 @strncpy(i64* %75, i64* %79, i32 32)
  br label %99

81:                                               ; preds = %68
  %82 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %83 = bitcast %union.acpi_object* %82 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load i64*, i64** %12, align 8
  %89 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %90 = bitcast %union.acpi_object* %89 to %struct.TYPE_6__*
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = bitcast i32* %91 to i64*
  %93 = call i32 @strncpy(i64* %88, i64* %92, i32 4)
  %94 = load i64*, i64** %12, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 4
  store i64 0, i64* %95, align 8
  br label %98

96:                                               ; preds = %81
  %97 = load i64*, i64** %12, align 8
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %96, %87
  br label %99

99:                                               ; preds = %98, %74
  br label %126

100:                                              ; preds = %37
  %101 = load %struct.acpi_battery*, %struct.acpi_battery** %6, align 8
  %102 = bitcast %struct.acpi_battery* %101 to i64*
  %103 = load %struct.acpi_offsets*, %struct.acpi_offsets** %8, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.acpi_offsets, %struct.acpi_offsets* %103, i64 %105
  %107 = getelementptr inbounds %struct.acpi_offsets, %struct.acpi_offsets* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %102, i64 %109
  %111 = bitcast i64* %110 to i32*
  store i32* %111, i32** %13, align 8
  %112 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %113 = bitcast %union.acpi_object* %112 to i64*
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %100
  %118 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %119 = bitcast %union.acpi_object* %118 to %struct.TYPE_6__*
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  br label %123

122:                                              ; preds = %100
  br label %123

123:                                              ; preds = %122, %117
  %124 = phi i32 [ %121, %117 ], [ -1, %122 ]
  %125 = load i32*, i32** %13, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %123, %99
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %23

130:                                              ; preds = %23
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %130, %34, %19
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @strncpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
