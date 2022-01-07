; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_get_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_get_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_video_bus = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.acpi_video_device* }
%struct.acpi_video_device = type { i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%union.acpi_object = type { i64 }
%struct.TYPE_8__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_video_get_edid(%struct.acpi_device* %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.acpi_video_bus*, align 8
  %11 = alloca %struct.acpi_video_device*, align 8
  %12 = alloca %union.acpi_object*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store %union.acpi_object* null, %union.acpi_object** %12, align 8
  %16 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %17 = icmp ne %struct.acpi_device* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %20 = call %struct.acpi_video_bus* @acpi_driver_data(%struct.acpi_device* %19)
  %21 = icmp ne %struct.acpi_video_bus* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18, %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %146

25:                                               ; preds = %18
  %26 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %27 = call %struct.acpi_video_bus* @acpi_driver_data(%struct.acpi_device* %26)
  store %struct.acpi_video_bus* %27, %struct.acpi_video_bus** %10, align 8
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %140, %25
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %10, align 8
  %31 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %143

34:                                               ; preds = %28
  %35 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %10, align 8
  %36 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.acpi_video_device*, %struct.acpi_video_device** %41, align 8
  store %struct.acpi_video_device* %42, %struct.acpi_video_device** %11, align 8
  store i32 256, i32* %15, align 4
  %43 = load %struct.acpi_video_device*, %struct.acpi_video_device** %11, align 8
  %44 = icmp ne %struct.acpi_video_device* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  br label %140

46:                                               ; preds = %34
  %47 = load %struct.acpi_video_device*, %struct.acpi_video_device** %11, align 8
  %48 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  br label %140

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  switch i32 %57, label %90 [
    i32 131, label %58
    i32 128, label %66
    i32 130, label %74
    i32 129, label %82
  ]

58:                                               ; preds = %56
  %59 = load %struct.acpi_video_device*, %struct.acpi_video_device** %11, align 8
  %60 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %140

65:                                               ; preds = %58
  br label %90

66:                                               ; preds = %56
  %67 = load %struct.acpi_video_device*, %struct.acpi_video_device** %11, align 8
  %68 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  br label %140

73:                                               ; preds = %66
  br label %90

74:                                               ; preds = %56
  %75 = load %struct.acpi_video_device*, %struct.acpi_video_device** %11, align 8
  %76 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  br label %140

81:                                               ; preds = %74
  br label %90

82:                                               ; preds = %56
  %83 = load %struct.acpi_video_device*, %struct.acpi_video_device** %11, align 8
  %84 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  br label %140

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %56, %89, %81, %73, %65
  br label %99

91:                                               ; preds = %53
  %92 = load %struct.acpi_video_device*, %struct.acpi_video_device** %11, align 8
  %93 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %140

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %90
  %100 = load %struct.acpi_video_device*, %struct.acpi_video_device** %11, align 8
  %101 = load i32, i32* %15, align 4
  %102 = call i32 @acpi_video_device_EDID(%struct.acpi_video_device* %100, %union.acpi_object** %12, i32 %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i64 @ACPI_FAILURE(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %99
  %107 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %108 = icmp ne %union.acpi_object* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %111 = bitcast %union.acpi_object* %110 to i64*
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %133

115:                                              ; preds = %109, %106, %99
  store i32 128, i32* %15, align 4
  %116 = load %struct.acpi_video_device*, %struct.acpi_video_device** %11, align 8
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @acpi_video_device_EDID(%struct.acpi_video_device* %116, %union.acpi_object** %12, i32 %117)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i64 @ACPI_FAILURE(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %115
  %123 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %124 = icmp ne %union.acpi_object* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %127 = bitcast %union.acpi_object* %126 to i64*
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %125, %122, %115
  br label %140

132:                                              ; preds = %125
  br label %133

133:                                              ; preds = %132, %109
  %134 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %135 = bitcast %union.acpi_object* %134 to %struct.TYPE_8__*
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i8**, i8*** %9, align 8
  store i8* %137, i8** %138, align 8
  %139 = load i32, i32* %15, align 4
  store i32 %139, i32* %5, align 4
  br label %146

140:                                              ; preds = %131, %97, %88, %80, %72, %64, %52, %45
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %14, align 4
  br label %28

143:                                              ; preds = %28
  %144 = load i32, i32* @ENODEV, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %143, %133, %22
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local %struct.acpi_video_bus* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_video_device_EDID(%struct.acpi_video_device*, %union.acpi_object**, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
