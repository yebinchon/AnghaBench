; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bfusb.c_bfusb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bfusb.c_bfusb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.usb_host_endpoint*, %struct.TYPE_4__ }
%struct.usb_host_endpoint = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.firmware = type { %struct.usb_device_id*, %struct.usb_interface* }
%struct.usb_device = type { i32 }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32 }
%struct.bfusb_data = type { %struct.hci_dev*, i32, i32, i32, i32*, i32, i32, i32, i32, %struct.usb_device* }

@.str = private unnamed_addr constant [14 x i8] c"intf %p id %p\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Bulk endpoints not found\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"bfubase.frm\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Firmware request failed\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"firmware data %p size %zu\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Firmware loading failed\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Can't allocate HCI device\00", align 1
@HCI_USB = common dso_local global i32 0, align 4
@bfusb_open = common dso_local global i32 0, align 4
@bfusb_close = common dso_local global i32 0, align 4
@bfusb_flush = common dso_local global i32 0, align 4
@bfusb_send_frame = common dso_local global i32 0, align 4
@HCI_QUIRK_BROKEN_LOCAL_COMMANDS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Can't register HCI device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @bfusb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfusb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.usb_host_endpoint*, align 8
  %9 = alloca %struct.usb_host_endpoint*, align 8
  %10 = alloca %struct.hci_dev*, align 8
  %11 = alloca %struct.bfusb_data*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %12)
  store %struct.usb_device* %13, %struct.usb_device** %7, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.usb_interface* %14, %struct.usb_device_id* %15)
  %17 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %18 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %174

27:                                               ; preds = %2
  %28 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %29 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %31, align 8
  %33 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %32, i64 0
  store %struct.usb_host_endpoint* %33, %struct.usb_host_endpoint** %8, align 8
  %34 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %35 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %37, align 8
  %39 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %38, i64 1
  store %struct.usb_host_endpoint* %39, %struct.usb_host_endpoint** %9, align 8
  %40 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %41 = icmp ne %struct.usb_host_endpoint* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %27
  %43 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %44 = icmp ne %struct.usb_host_endpoint* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42, %27
  %46 = call i32 @BT_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %171

47:                                               ; preds = %42
  %48 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %49 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %48, i32 0, i32 0
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.bfusb_data* @devm_kzalloc(i32* %49, i32 56, i32 %50)
  store %struct.bfusb_data* %51, %struct.bfusb_data** %11, align 8
  %52 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %53 = icmp ne %struct.bfusb_data* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %174

57:                                               ; preds = %47
  %58 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %59 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %60 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %59, i32 0, i32 9
  store %struct.usb_device* %58, %struct.usb_device** %60, align 8
  %61 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %9, align 8
  %62 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %66 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 4
  %67 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %68 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %72 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 8
  %73 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %74 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le16_to_cpu(i32 %76)
  %78 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %79 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 4
  %80 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %81 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %80, i32 0, i32 5
  %82 = call i32 @rwlock_init(i32* %81)
  %83 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %84 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %83, i32 0, i32 4
  store i32* null, i32** %84, align 8
  %85 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %86 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %85, i32 0, i32 3
  %87 = call i32 @skb_queue_head_init(i32* %86)
  %88 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %89 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %88, i32 0, i32 2
  %90 = call i32 @skb_queue_head_init(i32* %89)
  %91 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %92 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %91, i32 0, i32 1
  %93 = call i32 @skb_queue_head_init(i32* %92)
  %94 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %95 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %94, i32 0, i32 0
  %96 = call i64 @request_firmware(%struct.firmware** %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %57
  %99 = call i32 @BT_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %171

100:                                              ; preds = %57
  %101 = load %struct.firmware*, %struct.firmware** %6, align 8
  %102 = getelementptr inbounds %struct.firmware, %struct.firmware* %101, i32 0, i32 1
  %103 = load %struct.usb_interface*, %struct.usb_interface** %102, align 8
  %104 = load %struct.firmware*, %struct.firmware** %6, align 8
  %105 = getelementptr inbounds %struct.firmware, %struct.firmware* %104, i32 0, i32 0
  %106 = load %struct.usb_device_id*, %struct.usb_device_id** %105, align 8
  %107 = call i32 @BT_DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), %struct.usb_interface* %103, %struct.usb_device_id* %106)
  %108 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %109 = load %struct.firmware*, %struct.firmware** %6, align 8
  %110 = getelementptr inbounds %struct.firmware, %struct.firmware* %109, i32 0, i32 1
  %111 = load %struct.usb_interface*, %struct.usb_interface** %110, align 8
  %112 = load %struct.firmware*, %struct.firmware** %6, align 8
  %113 = getelementptr inbounds %struct.firmware, %struct.firmware* %112, i32 0, i32 0
  %114 = load %struct.usb_device_id*, %struct.usb_device_id** %113, align 8
  %115 = call i64 @bfusb_load_firmware(%struct.bfusb_data* %108, %struct.usb_interface* %111, %struct.usb_device_id* %114)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %100
  %118 = call i32 @BT_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %168

119:                                              ; preds = %100
  %120 = load %struct.firmware*, %struct.firmware** %6, align 8
  %121 = call i32 @release_firmware(%struct.firmware* %120)
  %122 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %122, %struct.hci_dev** %10, align 8
  %123 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %124 = icmp ne %struct.hci_dev* %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %119
  %126 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %171

127:                                              ; preds = %119
  %128 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %129 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %130 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %129, i32 0, i32 0
  store %struct.hci_dev* %128, %struct.hci_dev** %130, align 8
  %131 = load i32, i32* @HCI_USB, align 4
  %132 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %133 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 4
  %134 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %135 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %136 = call i32 @hci_set_drvdata(%struct.hci_dev* %134, %struct.bfusb_data* %135)
  %137 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %138 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %139 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %138, i32 0, i32 0
  %140 = call i32 @SET_HCIDEV_DEV(%struct.hci_dev* %137, i32* %139)
  %141 = load i32, i32* @bfusb_open, align 4
  %142 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %143 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @bfusb_close, align 4
  %145 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %146 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* @bfusb_flush, align 4
  %148 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %149 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @bfusb_send_frame, align 4
  %151 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %152 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @HCI_QUIRK_BROKEN_LOCAL_COMMANDS, align 4
  %154 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %155 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %154, i32 0, i32 0
  %156 = call i32 @set_bit(i32 %153, i32* %155)
  %157 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %158 = call i64 @hci_register_dev(%struct.hci_dev* %157)
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %127
  %161 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %162 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %163 = call i32 @hci_free_dev(%struct.hci_dev* %162)
  br label %171

164:                                              ; preds = %127
  %165 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %166 = load %struct.bfusb_data*, %struct.bfusb_data** %11, align 8
  %167 = call i32 @usb_set_intfdata(%struct.usb_interface* %165, %struct.bfusb_data* %166)
  store i32 0, i32* %3, align 4
  br label %174

168:                                              ; preds = %117
  %169 = load %struct.firmware*, %struct.firmware** %6, align 8
  %170 = call i32 @release_firmware(%struct.firmware* %169)
  br label %171

171:                                              ; preds = %168, %160, %125, %98, %45
  %172 = load i32, i32* @EIO, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %171, %164, %54, %24
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.usb_interface*, %struct.usb_device_id*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local %struct.bfusb_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i64 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i64 @bfusb_load_firmware(%struct.bfusb_data*, %struct.usb_interface*, %struct.usb_device_id*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @hci_set_drvdata(%struct.hci_dev*, %struct.bfusb_data*) #1

declare dso_local i32 @SET_HCIDEV_DEV(%struct.hci_dev*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.bfusb_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
