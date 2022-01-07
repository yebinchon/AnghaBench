; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32 }
%struct.sdio_device_id = type { i64, i32, i32, i32 }
%struct.btmrvl_private = type { i32, i32, i32 }
%struct.btmrvl_sdio_card = type { %struct.btmrvl_private*, i32, i32, i32, i32, i32, i32, %struct.sdio_func* }
%struct.btmrvl_sdio_device = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"vendor=0x%x, device=0x%x, class=%d, fn=%d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to register BT device!\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Downloading firmware failed!\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Initializing card failed!\00", align 1
@btmrvl_sdio_host_to_card = common dso_local global i32 0, align 4
@btmrvl_sdio_wakeup_fw = common dso_local global i32 0, align 4
@btmrvl_sdio_process_int_status = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Register hdev failed!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, %struct.sdio_device_id*)* @btmrvl_sdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_probe(%struct.sdio_func* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.btmrvl_private*, align 8
  %8 = alloca %struct.btmrvl_sdio_card*, align 8
  %9 = alloca %struct.btmrvl_sdio_device*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.btmrvl_private* null, %struct.btmrvl_private** %7, align 8
  store %struct.btmrvl_sdio_card* null, %struct.btmrvl_sdio_card** %8, align 8
  %10 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %11 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %14 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %17 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %20 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BT_INFO(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18, i32 %21)
  %23 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %24 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.btmrvl_sdio_card* @devm_kzalloc(i32* %24, i32 40, i32 %25)
  store %struct.btmrvl_sdio_card* %26, %struct.btmrvl_sdio_card** %8, align 8
  %27 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %28 = icmp ne %struct.btmrvl_sdio_card* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %137

32:                                               ; preds = %2
  %33 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %34 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %35 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %34, i32 0, i32 7
  store %struct.sdio_func* %33, %struct.sdio_func** %35, align 8
  %36 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %37 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %76

40:                                               ; preds = %32
  %41 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %42 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = bitcast i8* %44 to %struct.btmrvl_sdio_device*
  store %struct.btmrvl_sdio_device* %45, %struct.btmrvl_sdio_device** %9, align 8
  %46 = load %struct.btmrvl_sdio_device*, %struct.btmrvl_sdio_device** %9, align 8
  %47 = getelementptr inbounds %struct.btmrvl_sdio_device, %struct.btmrvl_sdio_device* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %50 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 4
  %51 = load %struct.btmrvl_sdio_device*, %struct.btmrvl_sdio_device** %9, align 8
  %52 = getelementptr inbounds %struct.btmrvl_sdio_device, %struct.btmrvl_sdio_device* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %55 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load %struct.btmrvl_sdio_device*, %struct.btmrvl_sdio_device** %9, align 8
  %57 = getelementptr inbounds %struct.btmrvl_sdio_device, %struct.btmrvl_sdio_device* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %60 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.btmrvl_sdio_device*, %struct.btmrvl_sdio_device** %9, align 8
  %62 = getelementptr inbounds %struct.btmrvl_sdio_device, %struct.btmrvl_sdio_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %65 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.btmrvl_sdio_device*, %struct.btmrvl_sdio_device** %9, align 8
  %67 = getelementptr inbounds %struct.btmrvl_sdio_device, %struct.btmrvl_sdio_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %70 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.btmrvl_sdio_device*, %struct.btmrvl_sdio_device** %9, align 8
  %72 = getelementptr inbounds %struct.btmrvl_sdio_device, %struct.btmrvl_sdio_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %75 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %40, %32
  %77 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %78 = call i64 @btmrvl_sdio_register_dev(%struct.btmrvl_sdio_card* %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = call i32 @BT_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %137

84:                                               ; preds = %76
  %85 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %86 = call i32 @btmrvl_sdio_disable_host_int(%struct.btmrvl_sdio_card* %85)
  %87 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %88 = call i64 @btmrvl_sdio_download_fw(%struct.btmrvl_sdio_card* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = call i32 @BT_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  br label %133

94:                                               ; preds = %84
  %95 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %96 = call i32 @btmrvl_sdio_enable_host_int(%struct.btmrvl_sdio_card* %95)
  %97 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %98 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %97, i32 0, i32 0
  %99 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %100 = call i32 @btmrvl_sdio_probe_of(i32* %98, %struct.btmrvl_sdio_card* %99)
  %101 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %102 = call %struct.btmrvl_private* @btmrvl_add_card(%struct.btmrvl_sdio_card* %101)
  store %struct.btmrvl_private* %102, %struct.btmrvl_private** %7, align 8
  %103 = load %struct.btmrvl_private*, %struct.btmrvl_private** %7, align 8
  %104 = icmp ne %struct.btmrvl_private* %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %94
  %106 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %6, align 4
  br label %130

109:                                              ; preds = %94
  %110 = load %struct.btmrvl_private*, %struct.btmrvl_private** %7, align 8
  %111 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %112 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %111, i32 0, i32 0
  store %struct.btmrvl_private* %110, %struct.btmrvl_private** %112, align 8
  %113 = load i32, i32* @btmrvl_sdio_host_to_card, align 4
  %114 = load %struct.btmrvl_private*, %struct.btmrvl_private** %7, align 8
  %115 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @btmrvl_sdio_wakeup_fw, align 4
  %117 = load %struct.btmrvl_private*, %struct.btmrvl_private** %7, align 8
  %118 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @btmrvl_sdio_process_int_status, align 4
  %120 = load %struct.btmrvl_private*, %struct.btmrvl_private** %7, align 8
  %121 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load %struct.btmrvl_private*, %struct.btmrvl_private** %7, align 8
  %123 = call i64 @btmrvl_register_hdev(%struct.btmrvl_private* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %109
  %126 = call i32 @BT_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %127 = load i32, i32* @ENODEV, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %6, align 4
  br label %130

129:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %137

130:                                              ; preds = %125, %105
  %131 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %132 = call i32 @btmrvl_sdio_disable_host_int(%struct.btmrvl_sdio_card* %131)
  br label %133

133:                                              ; preds = %130, %90
  %134 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %8, align 8
  %135 = call i32 @btmrvl_sdio_unregister_dev(%struct.btmrvl_sdio_card* %134)
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %133, %129, %80, %29
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @BT_INFO(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.btmrvl_sdio_card* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @btmrvl_sdio_register_dev(%struct.btmrvl_sdio_card*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @btmrvl_sdio_disable_host_int(%struct.btmrvl_sdio_card*) #1

declare dso_local i64 @btmrvl_sdio_download_fw(%struct.btmrvl_sdio_card*) #1

declare dso_local i32 @btmrvl_sdio_enable_host_int(%struct.btmrvl_sdio_card*) #1

declare dso_local i32 @btmrvl_sdio_probe_of(i32*, %struct.btmrvl_sdio_card*) #1

declare dso_local %struct.btmrvl_private* @btmrvl_add_card(%struct.btmrvl_sdio_card*) #1

declare dso_local i64 @btmrvl_register_hdev(%struct.btmrvl_private*) #1

declare dso_local i32 @btmrvl_sdio_unregister_dev(%struct.btmrvl_sdio_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
