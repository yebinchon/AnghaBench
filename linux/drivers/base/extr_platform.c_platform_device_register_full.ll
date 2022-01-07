; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_platform.c_platform_device_register_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_platform.c_platform_device_register_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i64, i32, i32, i32, i32 }
%struct.platform_device_info = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.platform_device* @platform_device_register_full(%struct.platform_device_info* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.platform_device_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  store %struct.platform_device_info* %0, %struct.platform_device_info** %3, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.platform_device_info*, %struct.platform_device_info** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %8, i32 0, i32 10
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.platform_device_info*, %struct.platform_device_info** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.platform_device* @platform_device_alloc(i32 %10, i32 %13)
  store %struct.platform_device* %14, %struct.platform_device** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %16 = icmp ne %struct.platform_device* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.platform_device* @ERR_PTR(i32 %19)
  store %struct.platform_device* %20, %struct.platform_device** %2, align 8
  br label %144

21:                                               ; preds = %1
  %22 = load %struct.platform_device_info*, %struct.platform_device_info** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  store i32 %24, i32* %27, align 4
  %28 = load %struct.platform_device_info*, %struct.platform_device_info** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @to_of_node(i32 %37)
  %39 = call i32 @of_node_get(i32 %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  store i32 %39, i32* %42, align 8
  %43 = load %struct.platform_device_info*, %struct.platform_device_info** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  %49 = load %struct.platform_device_info*, %struct.platform_device_info** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %21
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i64* @kmalloc(i32 8, i32 %54)
  %56 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i64* %55, i64** %58, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %53
  br label %129

65:                                               ; preds = %53
  %66 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = call i32 @kmemleak_ignore(i64* %69)
  %71 = load %struct.platform_device_info*, %struct.platform_device_info** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  store i64 %73, i64* %77, align 8
  %78 = load %struct.platform_device_info*, %struct.platform_device_info** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store i64 %80, i64* %83, align 8
  br label %84

84:                                               ; preds = %65, %21
  %85 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %86 = load %struct.platform_device_info*, %struct.platform_device_info** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.platform_device_info*, %struct.platform_device_info** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @platform_device_add_resources(%struct.platform_device* %85, i32 %88, i32 %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %129

96:                                               ; preds = %84
  %97 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %98 = load %struct.platform_device_info*, %struct.platform_device_info** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.platform_device_info*, %struct.platform_device_info** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @platform_device_add_data(%struct.platform_device* %97, i32 %100, i32 %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %129

108:                                              ; preds = %96
  %109 = load %struct.platform_device_info*, %struct.platform_device_info** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %115 = load %struct.platform_device_info*, %struct.platform_device_info** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @platform_device_add_properties(%struct.platform_device* %114, i32 %117)
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %129

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %108
  %124 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %125 = call i32 @platform_device_add(%struct.platform_device* %124)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128, %121, %107, %95, %64
  %130 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = call i32 @ACPI_COMPANION_SET(%struct.TYPE_2__* %131, i32* null)
  %133 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64*, i64** %135, align 8
  %137 = call i32 @kfree(i64* %136)
  %138 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %139 = call i32 @platform_device_put(%struct.platform_device* %138)
  %140 = load i32, i32* %4, align 4
  %141 = call %struct.platform_device* @ERR_PTR(i32 %140)
  store %struct.platform_device* %141, %struct.platform_device** %2, align 8
  br label %144

142:                                              ; preds = %123
  %143 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  store %struct.platform_device* %143, %struct.platform_device** %2, align 8
  br label %144

144:                                              ; preds = %142, %129, %17
  %145 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  ret %struct.platform_device* %145
}

declare dso_local %struct.platform_device* @platform_device_alloc(i32, i32) #1

declare dso_local %struct.platform_device* @ERR_PTR(i32) #1

declare dso_local i32 @of_node_get(i32) #1

declare dso_local i32 @to_of_node(i32) #1

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i32 @kmemleak_ignore(i64*) #1

declare dso_local i32 @platform_device_add_resources(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_device_add_properties(%struct.platform_device*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @ACPI_COMPANION_SET(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
