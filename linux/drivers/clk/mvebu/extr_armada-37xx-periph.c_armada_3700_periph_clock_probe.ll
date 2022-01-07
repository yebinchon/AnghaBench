; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_armada-37xx-periph.c_armada_3700_periph_clock_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_armada-37xx-periph.c_armada_3700_periph_clock_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.clk_periph_driver_data = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.clk_hw** }
%struct.clk_hw = type { i32 }
%struct.clk_periph_data = type { i64 }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hws = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Can't register periph clock %s\0A\00", align 1
@of_clk_hw_onecell_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @armada_3700_periph_clock_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_3700_periph_clock_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.clk_periph_driver_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.clk_periph_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.clk_hw**, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.device*, %struct.device** %7, align 8
  %20 = call %struct.clk_periph_data* @of_device_get_match_data(%struct.device* %19)
  store %struct.clk_periph_data* %20, %struct.clk_periph_data** %6, align 8
  %21 = load %struct.clk_periph_data*, %struct.clk_periph_data** %6, align 8
  %22 = icmp ne %struct.clk_periph_data* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %169

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %35, %26
  %28 = load %struct.clk_periph_data*, %struct.clk_periph_data** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.clk_periph_data, %struct.clk_periph_data* %28, i64 %30
  %32 = getelementptr inbounds %struct.clk_periph_data, %struct.clk_periph_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %27

38:                                               ; preds = %27
  %39 = load %struct.device*, %struct.device** %7, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @devm_kzalloc(%struct.device* %39, i32 16, i32 %40)
  %42 = bitcast i8* %41 to %struct.clk_periph_driver_data*
  store %struct.clk_periph_driver_data* %42, %struct.clk_periph_driver_data** %4, align 8
  %43 = load %struct.clk_periph_driver_data*, %struct.clk_periph_driver_data** %4, align 8
  %44 = icmp ne %struct.clk_periph_driver_data* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %169

48:                                               ; preds = %38
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = load %struct.clk_periph_driver_data*, %struct.clk_periph_driver_data** %4, align 8
  %51 = getelementptr inbounds %struct.clk_periph_driver_data, %struct.clk_periph_driver_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* @hws, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @struct_size(%struct.TYPE_3__* %52, i32 %53, i32 %54)
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @devm_kzalloc(%struct.device* %49, i32 %55, i32 %56)
  %58 = bitcast i8* %57 to %struct.TYPE_3__*
  %59 = load %struct.clk_periph_driver_data*, %struct.clk_periph_driver_data** %4, align 8
  %60 = getelementptr inbounds %struct.clk_periph_driver_data, %struct.clk_periph_driver_data* %59, i32 0, i32 0
  store %struct.TYPE_3__* %58, %struct.TYPE_3__** %60, align 8
  %61 = load %struct.clk_periph_driver_data*, %struct.clk_periph_driver_data** %4, align 8
  %62 = getelementptr inbounds %struct.clk_periph_driver_data, %struct.clk_periph_driver_data* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = icmp ne %struct.TYPE_3__* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %48
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %169

68:                                               ; preds = %48
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.clk_periph_driver_data*, %struct.clk_periph_driver_data** %4, align 8
  %71 = getelementptr inbounds %struct.clk_periph_driver_data, %struct.clk_periph_driver_data* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = load i32, i32* @IORESOURCE_MEM, align 4
  %76 = call %struct.resource* @platform_get_resource(%struct.platform_device* %74, i32 %75, i32 0)
  store %struct.resource* %76, %struct.resource** %11, align 8
  %77 = load %struct.device*, %struct.device** %7, align 8
  %78 = load %struct.resource*, %struct.resource** %11, align 8
  %79 = call i32 @devm_ioremap_resource(%struct.device* %77, %struct.resource* %78)
  %80 = load %struct.clk_periph_driver_data*, %struct.clk_periph_driver_data** %4, align 8
  %81 = getelementptr inbounds %struct.clk_periph_driver_data, %struct.clk_periph_driver_data* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.clk_periph_driver_data*, %struct.clk_periph_driver_data** %4, align 8
  %83 = getelementptr inbounds %struct.clk_periph_driver_data, %struct.clk_periph_driver_data* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @IS_ERR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %68
  %88 = load %struct.clk_periph_driver_data*, %struct.clk_periph_driver_data** %4, align 8
  %89 = getelementptr inbounds %struct.clk_periph_driver_data, %struct.clk_periph_driver_data* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @PTR_ERR(i32 %90)
  store i32 %91, i32* %2, align 4
  br label %169

92:                                               ; preds = %68
  %93 = load %struct.clk_periph_driver_data*, %struct.clk_periph_driver_data** %4, align 8
  %94 = getelementptr inbounds %struct.clk_periph_driver_data, %struct.clk_periph_driver_data* %93, i32 0, i32 1
  %95 = call i32 @spin_lock_init(i32* %94)
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %132, %92
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %135

100:                                              ; preds = %96
  %101 = load %struct.clk_periph_driver_data*, %struct.clk_periph_driver_data** %4, align 8
  %102 = getelementptr inbounds %struct.clk_periph_driver_data, %struct.clk_periph_driver_data* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load %struct.clk_hw**, %struct.clk_hw*** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %105, i64 %107
  store %struct.clk_hw** %108, %struct.clk_hw*** %12, align 8
  %109 = load %struct.clk_periph_data*, %struct.clk_periph_data** %6, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.clk_periph_data, %struct.clk_periph_data* %109, i64 %111
  %113 = load %struct.clk_periph_driver_data*, %struct.clk_periph_driver_data** %4, align 8
  %114 = getelementptr inbounds %struct.clk_periph_driver_data, %struct.clk_periph_driver_data* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.clk_periph_driver_data*, %struct.clk_periph_driver_data** %4, align 8
  %117 = getelementptr inbounds %struct.clk_periph_driver_data, %struct.clk_periph_driver_data* %116, i32 0, i32 1
  %118 = load %struct.device*, %struct.device** %7, align 8
  %119 = load %struct.clk_hw**, %struct.clk_hw*** %12, align 8
  %120 = call i64 @armada_3700_add_composite_clk(%struct.clk_periph_data* %112, i32 %115, i32* %117, %struct.device* %118, %struct.clk_hw** %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %100
  %123 = load %struct.device*, %struct.device** %7, align 8
  %124 = load %struct.clk_periph_data*, %struct.clk_periph_data** %6, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.clk_periph_data, %struct.clk_periph_data* %124, i64 %126
  %128 = getelementptr inbounds %struct.clk_periph_data, %struct.clk_periph_data* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @dev_err(%struct.device* %123, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %129)
  br label %131

131:                                              ; preds = %122, %100
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %96

135:                                              ; preds = %96
  %136 = load %struct.device_node*, %struct.device_node** %5, align 8
  %137 = load i32, i32* @of_clk_hw_onecell_get, align 4
  %138 = load %struct.clk_periph_driver_data*, %struct.clk_periph_driver_data** %4, align 8
  %139 = getelementptr inbounds %struct.clk_periph_driver_data, %struct.clk_periph_driver_data* %138, i32 0, i32 0
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = call i32 @of_clk_add_hw_provider(%struct.device_node* %136, i32 %137, %struct.TYPE_3__* %140)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %165

144:                                              ; preds = %135
  store i32 0, i32* %9, align 4
  br label %145

145:                                              ; preds = %160, %144
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %163

149:                                              ; preds = %145
  %150 = load %struct.clk_periph_driver_data*, %struct.clk_periph_driver_data** %4, align 8
  %151 = getelementptr inbounds %struct.clk_periph_driver_data, %struct.clk_periph_driver_data* %150, i32 0, i32 0
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  %154 = load %struct.clk_hw**, %struct.clk_hw*** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %154, i64 %156
  %158 = load %struct.clk_hw*, %struct.clk_hw** %157, align 8
  %159 = call i32 @clk_hw_unregister(%struct.clk_hw* %158)
  br label %160

160:                                              ; preds = %149
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %145

163:                                              ; preds = %145
  %164 = load i32, i32* %10, align 4
  store i32 %164, i32* %2, align 4
  br label %169

165:                                              ; preds = %135
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = load %struct.clk_periph_driver_data*, %struct.clk_periph_driver_data** %4, align 8
  %168 = call i32 @platform_set_drvdata(%struct.platform_device* %166, %struct.clk_periph_driver_data* %167)
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %165, %163, %87, %65, %45, %23
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local %struct.clk_periph_data* @of_device_get_match_data(%struct.device*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.TYPE_3__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @armada_3700_add_composite_clk(%struct.clk_periph_data*, i32, i32*, %struct.device*, %struct.clk_hw**) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @of_clk_add_hw_provider(%struct.device_node*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @clk_hw_unregister(%struct.clk_hw*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.clk_periph_driver_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
