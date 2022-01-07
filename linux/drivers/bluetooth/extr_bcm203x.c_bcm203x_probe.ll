; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bcm203x.c_bcm203x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bcm203x.c_bcm203x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.usb_device_id = type { i32 }
%struct.firmware = type { %struct.usb_device_id*, %struct.usb_interface* }
%struct.usb_device = type { i32 }
%struct.bcm203x_data = type { i32, i64, %struct.usb_device_id*, i32, i32, i32, i32, %struct.usb_device* }

@.str = private unnamed_addr constant [14 x i8] c"intf %p id %p\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BCM203X_LOAD_MINIDRV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"BCM2033-MD.hex\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Mini driver request failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"minidrv data %p size %zu\00", align 1
@uint = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Can't allocate memory for mini driver\00", align 1
@BCM203X_OUT_EP = common dso_local global i32 0, align 4
@bcm203x_complete = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"BCM2033-FW.bin\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Firmware request failed\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"firmware data %p size %zu\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Can't allocate memory for firmware image\00", align 1
@bcm203x_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @bcm203x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm203x_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.bcm203x_data*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %10)
  store %struct.usb_device* %11, %struct.usb_device** %7, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %14 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.usb_interface* %12, %struct.usb_device_id* %13)
  %15 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %16 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %199

25:                                               ; preds = %2
  %26 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %27 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.bcm203x_data* @devm_kzalloc(i32* %27, i32 48, i32 %28)
  store %struct.bcm203x_data* %29, %struct.bcm203x_data** %8, align 8
  %30 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %31 = icmp ne %struct.bcm203x_data* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %199

35:                                               ; preds = %25
  %36 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %37 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %38 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %37, i32 0, i32 7
  store %struct.usb_device* %36, %struct.usb_device** %38, align 8
  %39 = load i32, i32* @BCM203X_LOAD_MINIDRV, align 4
  %40 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %41 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i32 @usb_alloc_urb(i32 0, i32 %42)
  %44 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %45 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %47 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %35
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %199

53:                                               ; preds = %35
  %54 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %55 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %54, i32 0, i32 0
  %56 = call i64 @request_firmware(%struct.firmware** %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = call i32 @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %61 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @usb_free_urb(i32 %62)
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %199

66:                                               ; preds = %53
  %67 = load %struct.firmware*, %struct.firmware** %6, align 8
  %68 = getelementptr inbounds %struct.firmware, %struct.firmware* %67, i32 0, i32 1
  %69 = load %struct.usb_interface*, %struct.usb_interface** %68, align 8
  %70 = load %struct.firmware*, %struct.firmware** %6, align 8
  %71 = getelementptr inbounds %struct.firmware, %struct.firmware* %70, i32 0, i32 0
  %72 = load %struct.usb_device_id*, %struct.usb_device_id** %71, align 8
  %73 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), %struct.usb_interface* %69, %struct.usb_device_id* %72)
  %74 = load i32, i32* @uint, align 4
  %75 = load %struct.firmware*, %struct.firmware** %6, align 8
  %76 = getelementptr inbounds %struct.firmware, %struct.firmware* %75, i32 0, i32 0
  %77 = load %struct.usb_device_id*, %struct.usb_device_id** %76, align 8
  %78 = call i32 @max_t(i32 %74, %struct.usb_device_id* %77, i32 4096)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i32 @kmalloc(i32 %79, i32 %80)
  %82 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %83 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  %84 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %85 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %66
  %89 = call i32 @BT_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %90 = load %struct.firmware*, %struct.firmware** %6, align 8
  %91 = call i32 @release_firmware(%struct.firmware* %90)
  %92 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %93 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @usb_free_urb(i32 %94)
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %199

98:                                               ; preds = %66
  %99 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %100 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.firmware*, %struct.firmware** %6, align 8
  %103 = getelementptr inbounds %struct.firmware, %struct.firmware* %102, i32 0, i32 1
  %104 = load %struct.usb_interface*, %struct.usb_interface** %103, align 8
  %105 = load %struct.firmware*, %struct.firmware** %6, align 8
  %106 = getelementptr inbounds %struct.firmware, %struct.firmware* %105, i32 0, i32 0
  %107 = load %struct.usb_device_id*, %struct.usb_device_id** %106, align 8
  %108 = call i32 @memcpy(i32 %101, %struct.usb_interface* %104, %struct.usb_device_id* %107)
  %109 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %110 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %113 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %114 = load i32, i32* @BCM203X_OUT_EP, align 4
  %115 = call i32 @usb_sndbulkpipe(%struct.usb_device* %113, i32 %114)
  %116 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %117 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.firmware*, %struct.firmware** %6, align 8
  %120 = getelementptr inbounds %struct.firmware, %struct.firmware* %119, i32 0, i32 0
  %121 = load %struct.usb_device_id*, %struct.usb_device_id** %120, align 8
  %122 = load i32, i32* @bcm203x_complete, align 4
  %123 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %124 = call i32 @usb_fill_bulk_urb(i32 %111, %struct.usb_device* %112, i32 %115, i32 %118, %struct.usb_device_id* %121, i32 %122, %struct.bcm203x_data* %123)
  %125 = load %struct.firmware*, %struct.firmware** %6, align 8
  %126 = call i32 @release_firmware(%struct.firmware* %125)
  %127 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %128 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %127, i32 0, i32 0
  %129 = call i64 @request_firmware(%struct.firmware** %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %98
  %132 = call i32 @BT_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %133 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %134 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @usb_free_urb(i32 %135)
  %137 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %138 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @kfree(i32 %139)
  %141 = load i32, i32* @EIO, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  br label %199

143:                                              ; preds = %98
  %144 = load %struct.firmware*, %struct.firmware** %6, align 8
  %145 = getelementptr inbounds %struct.firmware, %struct.firmware* %144, i32 0, i32 1
  %146 = load %struct.usb_interface*, %struct.usb_interface** %145, align 8
  %147 = load %struct.firmware*, %struct.firmware** %6, align 8
  %148 = getelementptr inbounds %struct.firmware, %struct.firmware* %147, i32 0, i32 0
  %149 = load %struct.usb_device_id*, %struct.usb_device_id** %148, align 8
  %150 = call i32 @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), %struct.usb_interface* %146, %struct.usb_device_id* %149)
  %151 = load %struct.firmware*, %struct.firmware** %6, align 8
  %152 = getelementptr inbounds %struct.firmware, %struct.firmware* %151, i32 0, i32 1
  %153 = load %struct.usb_interface*, %struct.usb_interface** %152, align 8
  %154 = load %struct.firmware*, %struct.firmware** %6, align 8
  %155 = getelementptr inbounds %struct.firmware, %struct.firmware* %154, i32 0, i32 0
  %156 = load %struct.usb_device_id*, %struct.usb_device_id** %155, align 8
  %157 = load i32, i32* @GFP_KERNEL, align 4
  %158 = call i32 @kmemdup(%struct.usb_interface* %153, %struct.usb_device_id* %156, i32 %157)
  %159 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %160 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %159, i32 0, i32 5
  store i32 %158, i32* %160, align 8
  %161 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %162 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %179, label %165

165:                                              ; preds = %143
  %166 = call i32 @BT_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %167 = load %struct.firmware*, %struct.firmware** %6, align 8
  %168 = call i32 @release_firmware(%struct.firmware* %167)
  %169 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %170 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @usb_free_urb(i32 %171)
  %173 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %174 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @kfree(i32 %175)
  %177 = load i32, i32* @ENOMEM, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %3, align 4
  br label %199

179:                                              ; preds = %143
  %180 = load %struct.firmware*, %struct.firmware** %6, align 8
  %181 = getelementptr inbounds %struct.firmware, %struct.firmware* %180, i32 0, i32 0
  %182 = load %struct.usb_device_id*, %struct.usb_device_id** %181, align 8
  %183 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %184 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %183, i32 0, i32 2
  store %struct.usb_device_id* %182, %struct.usb_device_id** %184, align 8
  %185 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %186 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %185, i32 0, i32 1
  store i64 0, i64* %186, align 8
  %187 = load %struct.firmware*, %struct.firmware** %6, align 8
  %188 = call i32 @release_firmware(%struct.firmware* %187)
  %189 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %190 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %189, i32 0, i32 0
  %191 = load i32, i32* @bcm203x_work, align 4
  %192 = call i32 @INIT_WORK(i32* %190, i32 %191)
  %193 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %194 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %195 = call i32 @usb_set_intfdata(%struct.usb_interface* %193, %struct.bcm203x_data* %194)
  %196 = load %struct.bcm203x_data*, %struct.bcm203x_data** %8, align 8
  %197 = getelementptr inbounds %struct.bcm203x_data, %struct.bcm203x_data* %196, i32 0, i32 0
  %198 = call i32 @schedule_work(i32* %197)
  store i32 0, i32* %3, align 4
  br label %199

199:                                              ; preds = %179, %165, %131, %88, %58, %50, %32, %22
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.usb_interface*, %struct.usb_device_id*) #1

declare dso_local %struct.bcm203x_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i64 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @max_t(i32, %struct.usb_device_id*, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @memcpy(i32, %struct.usb_interface*, %struct.usb_device_id*) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, %struct.usb_device*, i32, i32, %struct.usb_device_id*, i32, %struct.bcm203x_data*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kmemdup(%struct.usb_interface*, %struct.usb_device_id*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.bcm203x_data*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
