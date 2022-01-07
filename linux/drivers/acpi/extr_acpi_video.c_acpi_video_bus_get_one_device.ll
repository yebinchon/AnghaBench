; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_bus_get_one_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_bus_get_one_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.acpi_video_device*, i32 }
%struct.acpi_video_device = type { i64, i32, %struct.TYPE_2__, i32, %struct.acpi_device*, %struct.acpi_video_bus* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.acpi_video_bus = type { i32, i32 }
%struct.acpi_video_device_attrib = type { i32, i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"_ADR\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACPI_VIDEO_DEVICE_NAME = common dso_local global i32 0, align 4
@ACPI_VIDEO_CLASS = common dso_local global i32 0, align 4
@acpi_video_switch_brightness = common dso_local global i32 0, align 4
@device_id_scheme = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, %struct.acpi_video_bus*)* @acpi_video_bus_get_one_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_video_bus_get_one_device(%struct.acpi_device* %0, %struct.acpi_video_bus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.acpi_video_bus*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.acpi_video_device*, align 8
  %10 = alloca %struct.acpi_video_device_attrib*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store %struct.acpi_video_bus* %1, %struct.acpi_video_bus** %5, align 8
  %11 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %12 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @acpi_evaluate_integer(i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @ACPI_FAILURE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %140

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.acpi_video_device* @kzalloc(i32 56, i32 %20)
  store %struct.acpi_video_device* %21, %struct.acpi_video_device** %9, align 8
  %22 = load %struct.acpi_video_device*, %struct.acpi_video_device** %9, align 8
  %23 = icmp ne %struct.acpi_video_device* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %140

27:                                               ; preds = %19
  %28 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %29 = call i32 @acpi_device_name(%struct.acpi_device* %28)
  %30 = load i32, i32* @ACPI_VIDEO_DEVICE_NAME, align 4
  %31 = call i32 @strcpy(i32 %29, i32 %30)
  %32 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %33 = call i32 @acpi_device_class(%struct.acpi_device* %32)
  %34 = load i32, i32* @ACPI_VIDEO_CLASS, align 4
  %35 = call i32 @strcpy(i32 %33, i32 %34)
  %36 = load %struct.acpi_video_device*, %struct.acpi_video_device** %9, align 8
  %37 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %38 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %37, i32 0, i32 0
  store %struct.acpi_video_device* %36, %struct.acpi_video_device** %38, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.acpi_video_device*, %struct.acpi_video_device** %9, align 8
  %41 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %5, align 8
  %43 = load %struct.acpi_video_device*, %struct.acpi_video_device** %9, align 8
  %44 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %43, i32 0, i32 5
  store %struct.acpi_video_bus* %42, %struct.acpi_video_bus** %44, align 8
  %45 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %46 = load %struct.acpi_video_device*, %struct.acpi_video_device** %9, align 8
  %47 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %46, i32 0, i32 4
  store %struct.acpi_device* %45, %struct.acpi_device** %47, align 8
  %48 = load %struct.acpi_video_device*, %struct.acpi_video_device** %9, align 8
  %49 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %48, i32 0, i32 3
  %50 = load i32, i32* @acpi_video_switch_brightness, align 4
  %51 = call i32 @INIT_DELAYED_WORK(i32* %49, i32 %50)
  %52 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call %struct.acpi_video_device_attrib* @acpi_video_get_device_attr(%struct.acpi_video_bus* %52, i64 %53)
  store %struct.acpi_video_device_attrib* %54, %struct.acpi_video_device_attrib** %10, align 8
  %55 = load %struct.acpi_video_device_attrib*, %struct.acpi_video_device_attrib** %10, align 8
  %56 = icmp ne %struct.acpi_video_device_attrib* %55, null
  br i1 %56, label %57, label %99

57:                                               ; preds = %27
  %58 = load %struct.acpi_video_device_attrib*, %struct.acpi_video_device_attrib** %10, align 8
  %59 = getelementptr inbounds %struct.acpi_video_device_attrib, %struct.acpi_video_device_attrib* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i64, i64* @device_id_scheme, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %99

65:                                               ; preds = %62, %57
  %66 = load %struct.acpi_video_device_attrib*, %struct.acpi_video_device_attrib** %10, align 8
  %67 = getelementptr inbounds %struct.acpi_video_device_attrib, %struct.acpi_video_device_attrib* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %85 [
    i32 134, label %69
    i32 128, label %73
    i32 133, label %77
    i32 132, label %81
  ]

69:                                               ; preds = %65
  %70 = load %struct.acpi_video_device*, %struct.acpi_video_device** %9, align 8
  %71 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  br label %89

73:                                               ; preds = %65
  %74 = load %struct.acpi_video_device*, %struct.acpi_video_device** %9, align 8
  %75 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  br label %89

77:                                               ; preds = %65
  %78 = load %struct.acpi_video_device*, %struct.acpi_video_device** %9, align 8
  %79 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  store i32 1, i32* %80, align 4
  br label %89

81:                                               ; preds = %65
  %82 = load %struct.acpi_video_device*, %struct.acpi_video_device** %9, align 8
  %83 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  store i32 1, i32* %84, align 4
  br label %89

85:                                               ; preds = %65
  %86 = load %struct.acpi_video_device*, %struct.acpi_video_device** %9, align 8
  %87 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 4
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %85, %81, %77, %73, %69
  %90 = load %struct.acpi_video_device_attrib*, %struct.acpi_video_device_attrib** %10, align 8
  %91 = getelementptr inbounds %struct.acpi_video_device_attrib, %struct.acpi_video_device_attrib* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load %struct.acpi_video_device*, %struct.acpi_video_device** %9, align 8
  %96 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 5
  store i32 1, i32* %97, align 4
  br label %98

98:                                               ; preds = %94, %89
  br label %122

99:                                               ; preds = %62, %27
  %100 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %5, align 8
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @acpi_video_get_device_type(%struct.acpi_video_bus* %100, i64 %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = and i32 %103, -1900545
  switch i32 %104, label %117 [
    i32 131, label %105
    i32 130, label %109
    i32 129, label %113
  ]

105:                                              ; preds = %99
  %106 = load %struct.acpi_video_device*, %struct.acpi_video_device** %9, align 8
  %107 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 4
  br label %121

109:                                              ; preds = %99
  %110 = load %struct.acpi_video_device*, %struct.acpi_video_device** %9, align 8
  %111 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  store i32 1, i32* %112, align 4
  br label %121

113:                                              ; preds = %99
  %114 = load %struct.acpi_video_device*, %struct.acpi_video_device** %9, align 8
  %115 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i32 1, i32* %116, align 4
  br label %121

117:                                              ; preds = %99
  %118 = load %struct.acpi_video_device*, %struct.acpi_video_device** %9, align 8
  %119 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 4
  store i32 1, i32* %120, align 4
  br label %121

121:                                              ; preds = %117, %113, %109, %105
  br label %122

122:                                              ; preds = %121, %98
  %123 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %5, align 8
  %124 = load %struct.acpi_video_device*, %struct.acpi_video_device** %9, align 8
  %125 = call i32 @acpi_video_device_bind(%struct.acpi_video_bus* %123, %struct.acpi_video_device* %124)
  %126 = load %struct.acpi_video_device*, %struct.acpi_video_device** %9, align 8
  %127 = call i32 @acpi_video_device_find_cap(%struct.acpi_video_device* %126)
  %128 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %5, align 8
  %129 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %128, i32 0, i32 0
  %130 = call i32 @mutex_lock(i32* %129)
  %131 = load %struct.acpi_video_device*, %struct.acpi_video_device** %9, align 8
  %132 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %131, i32 0, i32 1
  %133 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %5, align 8
  %134 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %133, i32 0, i32 1
  %135 = call i32 @list_add_tail(i32* %132, i32* %134)
  %136 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %5, align 8
  %137 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %136, i32 0, i32 0
  %138 = call i32 @mutex_unlock(i32* %137)
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %122, %24, %18
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %struct.acpi_video_device* @kzalloc(i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @acpi_device_name(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_class(%struct.acpi_device*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local %struct.acpi_video_device_attrib* @acpi_video_get_device_attr(%struct.acpi_video_bus*, i64) #1

declare dso_local i32 @acpi_video_get_device_type(%struct.acpi_video_bus*, i64) #1

declare dso_local i32 @acpi_video_device_bind(%struct.acpi_video_bus*, %struct.acpi_video_device*) #1

declare dso_local i32 @acpi_video_device_find_cap(%struct.acpi_video_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
