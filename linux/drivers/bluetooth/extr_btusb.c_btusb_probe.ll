; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.gpio_desc = type { i32 }
%struct.btusb_data = type { i32, i32, i32, %struct.gpio_desc*, %struct.usb_device*, i32*, i32*, i32, i8*, i64, %struct.hci_dev*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.usb_interface*, %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor* }
%struct.usb_device = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.hci_dev = type { i32, i32, i32, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"intf %p id %p\00", align 1
@BTUSB_IFNUM_2 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@blacklist_table = common dso_local global i32 0, align 4
@BTUSB_IGNORE = common dso_local global i32 0, align 4
@BTUSB_ATH3012 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTUSB_AMP = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@btusb_work = common dso_local global i32 0, align 4
@btusb_waker = common dso_local global i32 0, align 4
@BTUSB_INTEL_NEW = common dso_local global i32 0, align 4
@btusb_recv_event_intel = common dso_local global i32 0, align 4
@btusb_recv_bulk_intel = common dso_local global i32 0, align 4
@BTUSB_BOOTLOADER = common dso_local global i32 0, align 4
@hci_recv_frame = common dso_local global i32 0, align 4
@btusb_recv_bulk = common dso_local global i32 0, align 4
@HCI_USB = common dso_local global i32 0, align 4
@HCI_AMP = common dso_local global i32 0, align 4
@HCI_PRIMARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@btusb_open = common dso_local global i32 0, align 4
@btusb_close = common dso_local global i32 0, align 4
@btusb_flush = common dso_local global i32 0, align 4
@btusb_send_frame = common dso_local global i32 0, align 4
@btusb_notify = common dso_local global i32 0, align 4
@BTUSB_CW6622 = common dso_local global i32 0, align 4
@HCI_QUIRK_BROKEN_STORED_LINK_KEY = common dso_local global i32 0, align 4
@BTUSB_BCM2045 = common dso_local global i32 0, align 4
@BTUSB_BCM92035 = common dso_local global i32 0, align 4
@btusb_setup_bcm92035 = common dso_local global i32 0, align 4
@BTUSB_INTEL = common dso_local global i32 0, align 4
@btusb_setup_intel = common dso_local global i32 0, align 4
@btusb_shutdown_intel = common dso_local global i32 0, align 4
@btintel_set_diag_mfg = common dso_local global i8* null, align 8
@btintel_set_bdaddr = common dso_local global i8* null, align 8
@btusb_intel_cmd_timeout = common dso_local global i8* null, align 8
@HCI_QUIRK_STRICT_DUPLICATE_FILTER = common dso_local global i32 0, align 4
@HCI_QUIRK_SIMULTANEOUS_DISCOVERY = common dso_local global i32 0, align 4
@HCI_QUIRK_NON_PERSISTENT_DIAG = common dso_local global i32 0, align 4
@btusb_send_frame_intel = common dso_local global i32 0, align 4
@btusb_setup_intel_new = common dso_local global i32 0, align 4
@btusb_shutdown_intel_new = common dso_local global i32 0, align 4
@btintel_hw_error = common dso_local global i32 0, align 4
@btintel_set_diag = common dso_local global i8* null, align 8
@BTUSB_MARVELL = common dso_local global i32 0, align 4
@btusb_set_bdaddr_marvell = common dso_local global i8* null, align 8
@BTUSB_SWAVE = common dso_local global i32 0, align 4
@HCI_QUIRK_FIXUP_INQUIRY_MODE = common dso_local global i32 0, align 4
@HCI_QUIRK_BROKEN_LOCAL_COMMANDS = common dso_local global i32 0, align 4
@BTUSB_INTEL_BOOT = common dso_local global i32 0, align 4
@HCI_QUIRK_RAW_DEVICE = common dso_local global i32 0, align 4
@btusb_setup_qca = common dso_local global i8* null, align 8
@btusb_set_bdaddr_ath3012 = common dso_local global i8* null, align 8
@BTUSB_QCA_ROME = common dso_local global i32 0, align 4
@reset = common dso_local global i32 0, align 4
@HCI_QUIRK_RESET_ON_CLOSE = common dso_local global i32 0, align 4
@force_scofix = common dso_local global i64 0, align 8
@BTUSB_WRONG_SCO_MTU = common dso_local global i32 0, align 4
@disable_scofix = common dso_local global i32 0, align 4
@HCI_QUIRK_FIXUP_BUFFER_SIZE = common dso_local global i32 0, align 4
@BTUSB_BROKEN_ISOC = common dso_local global i32 0, align 4
@BTUSB_DIGIANSWER = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@BTUSB_CSR = common dso_local global i32 0, align 4
@btusb_setup_csr = common dso_local global i32 0, align 4
@BTUSB_SNIFFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to set interface 0, alt 0 %d\00", align 1
@btusb_driver = common dso_local global i32 0, align 4
@enable_autosuspend = common dso_local global i64 0, align 8
@BTUSB_BCM_APPLE = common dso_local global i32 0, align 4
@BTUSB_BCM_PATCHRAM = common dso_local global i32 0, align 4
@BTUSB_MEDIATEK = common dso_local global i32 0, align 4
@BTUSB_REALTEK = common dso_local global i32 0, align 4
@BTUSB_WAKEUP_DISABLE = common dso_local global i32 0, align 4
@HCI_QUIRK_NON_PERSISTENT_SETUP = common dso_local global i32 0, align 4
@btbcm_set_bdaddr = common dso_local global i8* null, align 8
@btbcm_setup_apple = common dso_local global i32 0, align 4
@btbcm_setup_patchram = common dso_local global i32 0, align 4
@btrtl_setup_realtek = common dso_local global i32 0, align 4
@btrtl_shutdown_realtek = common dso_local global i32 0, align 4
@btusb_bcm_set_diag = common dso_local global i8* null, align 8
@btusb_mtk_setup = common dso_local global i32 0, align 4
@btusb_mtk_shutdown = common dso_local global i32 0, align 4
@btusb_rtl_cmd_timeout = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @btusb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  %7 = alloca %struct.gpio_desc*, align 8
  %8 = alloca %struct.btusb_data*, align 8
  %9 = alloca %struct.hci_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_device_id*, align 8
  %14 = alloca %struct.usb_device*, align 8
  %15 = alloca %struct.usb_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %18 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %19 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.usb_interface* %18, %struct.usb_device_id* %19)
  %21 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %2
  %29 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %30 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BTUSB_IFNUM_2, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %753

38:                                               ; preds = %28
  %39 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %40 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 2
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %753

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %52 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %10, align 4
  %57 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %58 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %50
  %62 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %63 = load i32, i32* @blacklist_table, align 4
  %64 = call %struct.usb_device_id* @usb_match_id(%struct.usb_interface* %62, i32 %63)
  store %struct.usb_device_id* %64, %struct.usb_device_id** %13, align 8
  %65 = load %struct.usb_device_id*, %struct.usb_device_id** %13, align 8
  %66 = icmp ne %struct.usb_device_id* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load %struct.usb_device_id*, %struct.usb_device_id** %13, align 8
  store %struct.usb_device_id* %68, %struct.usb_device_id** %5, align 8
  br label %69

69:                                               ; preds = %67, %61
  br label %70

70:                                               ; preds = %69, %50
  %71 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %72 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @BTUSB_IGNORE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %753

79:                                               ; preds = %70
  %80 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %81 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @BTUSB_ATH3012, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %79
  %87 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %88 = call i8* @interface_to_usbdev(%struct.usb_interface* %87)
  %89 = bitcast i8* %88 to %struct.usb_device*
  store %struct.usb_device* %89, %struct.usb_device** %14, align 8
  %90 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %91 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @le16_to_cpu(i32 %93)
  %95 = icmp sle i32 %94, 1
  br i1 %95, label %96, label %103

96:                                               ; preds = %86
  %97 = load %struct.usb_device*, %struct.usb_device** %14, align 8
  %98 = call i32 @btusb_qca_need_patch(%struct.usb_device* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* @ENODEV, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %753

103:                                              ; preds = %96, %86
  br label %104

104:                                              ; preds = %103, %79
  %105 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %106 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %105, i32 0, i32 0
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call %struct.btusb_data* @devm_kzalloc(i32* %106, i32 168, i32 %107)
  store %struct.btusb_data* %108, %struct.btusb_data** %8, align 8
  %109 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %110 = icmp ne %struct.btusb_data* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %104
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %753

114:                                              ; preds = %104
  store i32 0, i32* %11, align 4
  br label %115

115:                                              ; preds = %173, %114
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %118 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %117, i32 0, i32 1
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %116, %122
  br i1 %123, label %124, label %176

124:                                              ; preds = %115
  %125 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %126 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %125, i32 0, i32 1
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %133, %struct.usb_endpoint_descriptor** %6, align 8
  %134 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %135 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %134, i32 0, i32 27
  %136 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %135, align 8
  %137 = icmp ne %struct.usb_endpoint_descriptor* %136, null
  br i1 %137, label %146, label %138

138:                                              ; preds = %124
  %139 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %140 = call i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %144 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %145 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %144, i32 0, i32 27
  store %struct.usb_endpoint_descriptor* %143, %struct.usb_endpoint_descriptor** %145, align 8
  br label %173

146:                                              ; preds = %138, %124
  %147 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %148 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %147, i32 0, i32 26
  %149 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %148, align 8
  %150 = icmp ne %struct.usb_endpoint_descriptor* %149, null
  br i1 %150, label %159, label %151

151:                                              ; preds = %146
  %152 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %153 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %157 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %158 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %157, i32 0, i32 26
  store %struct.usb_endpoint_descriptor* %156, %struct.usb_endpoint_descriptor** %158, align 8
  br label %173

159:                                              ; preds = %151, %146
  %160 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %161 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %160, i32 0, i32 25
  %162 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %161, align 8
  %163 = icmp ne %struct.usb_endpoint_descriptor* %162, null
  br i1 %163, label %172, label %164

164:                                              ; preds = %159
  %165 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %166 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %170 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %171 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %170, i32 0, i32 25
  store %struct.usb_endpoint_descriptor* %169, %struct.usb_endpoint_descriptor** %171, align 8
  br label %173

172:                                              ; preds = %164, %159
  br label %173

173:                                              ; preds = %172, %168, %155, %142
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %11, align 4
  br label %115

176:                                              ; preds = %115
  %177 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %178 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %177, i32 0, i32 27
  %179 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %178, align 8
  %180 = icmp ne %struct.usb_endpoint_descriptor* %179, null
  br i1 %180, label %181, label %191

181:                                              ; preds = %176
  %182 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %183 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %182, i32 0, i32 26
  %184 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %183, align 8
  %185 = icmp ne %struct.usb_endpoint_descriptor* %184, null
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %188 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %187, i32 0, i32 25
  %189 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %188, align 8
  %190 = icmp ne %struct.usb_endpoint_descriptor* %189, null
  br i1 %190, label %194, label %191

191:                                              ; preds = %186, %181, %176
  %192 = load i32, i32* @ENODEV, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %3, align 4
  br label %753

194:                                              ; preds = %186
  %195 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %196 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @BTUSB_AMP, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %194
  %202 = load i32, i32* @USB_TYPE_CLASS, align 4
  %203 = or i32 %202, 1
  %204 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %205 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %207 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %206, i32 0, i32 1
  store i32 43, i32* %207, align 4
  br label %214

208:                                              ; preds = %194
  %209 = load i32, i32* @USB_TYPE_CLASS, align 4
  %210 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %211 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %213 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %212, i32 0, i32 1
  store i32 0, i32* %213, align 4
  br label %214

214:                                              ; preds = %208, %201
  %215 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %216 = call i8* @interface_to_usbdev(%struct.usb_interface* %215)
  %217 = bitcast i8* %216 to %struct.usb_device*
  %218 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %219 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %218, i32 0, i32 4
  store %struct.usb_device* %217, %struct.usb_device** %219, align 8
  %220 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %221 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %222 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %221, i32 0, i32 24
  store %struct.usb_interface* %220, %struct.usb_interface** %222, align 8
  %223 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %224 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %223, i32 0, i32 23
  %225 = load i32, i32* @btusb_work, align 4
  %226 = call i32 @INIT_WORK(i32* %224, i32 %225)
  %227 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %228 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %227, i32 0, i32 22
  %229 = load i32, i32* @btusb_waker, align 4
  %230 = call i32 @INIT_WORK(i32* %228, i32 %229)
  %231 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %232 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %231, i32 0, i32 21
  %233 = call i32 @init_usb_anchor(i32* %232)
  %234 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %235 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %234, i32 0, i32 20
  %236 = call i32 @init_usb_anchor(i32* %235)
  %237 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %238 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %237, i32 0, i32 19
  %239 = call i32 @spin_lock_init(i32* %238)
  %240 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %241 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %240, i32 0, i32 18
  %242 = call i32 @init_usb_anchor(i32* %241)
  %243 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %244 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %243, i32 0, i32 17
  %245 = call i32 @init_usb_anchor(i32* %244)
  %246 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %247 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %246, i32 0, i32 16
  %248 = call i32 @init_usb_anchor(i32* %247)
  %249 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %250 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %249, i32 0, i32 15
  %251 = call i32 @init_usb_anchor(i32* %250)
  %252 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %253 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %252, i32 0, i32 14
  %254 = call i32 @init_usb_anchor(i32* %253)
  %255 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %256 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %255, i32 0, i32 13
  %257 = call i32 @spin_lock_init(i32* %256)
  %258 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %259 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @BTUSB_INTEL_NEW, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %275

264:                                              ; preds = %214
  %265 = load i32, i32* @btusb_recv_event_intel, align 4
  %266 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %267 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %266, i32 0, i32 12
  store i32 %265, i32* %267, align 4
  %268 = load i32, i32* @btusb_recv_bulk_intel, align 4
  %269 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %270 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %269, i32 0, i32 11
  store i32 %268, i32* %270, align 8
  %271 = load i32, i32* @BTUSB_BOOTLOADER, align 4
  %272 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %273 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %272, i32 0, i32 7
  %274 = call i32 @set_bit(i32 %271, i32* %273)
  br label %282

275:                                              ; preds = %214
  %276 = load i32, i32* @hci_recv_frame, align 4
  %277 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %278 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %277, i32 0, i32 12
  store i32 %276, i32* %278, align 4
  %279 = load i32, i32* @btusb_recv_bulk, align 4
  %280 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %281 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %280, i32 0, i32 11
  store i32 %279, i32* %281, align 8
  br label %282

282:                                              ; preds = %275, %264
  %283 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %283, %struct.hci_dev** %9, align 8
  %284 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %285 = icmp ne %struct.hci_dev* %284, null
  br i1 %285, label %289, label %286

286:                                              ; preds = %282
  %287 = load i32, i32* @ENOMEM, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %3, align 4
  br label %753

289:                                              ; preds = %282
  %290 = load i32, i32* @HCI_USB, align 4
  %291 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %292 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %291, i32 0, i32 14
  store i32 %290, i32* %292, align 4
  %293 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %294 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %295 = call i32 @hci_set_drvdata(%struct.hci_dev* %293, %struct.btusb_data* %294)
  %296 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %297 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @BTUSB_AMP, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %289
  %303 = load i32, i32* @HCI_AMP, align 4
  %304 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %305 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %304, i32 0, i32 13
  store i32 %303, i32* %305, align 8
  br label %310

306:                                              ; preds = %289
  %307 = load i32, i32* @HCI_PRIMARY, align 4
  %308 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %309 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %308, i32 0, i32 13
  store i32 %307, i32* %309, align 8
  br label %310

310:                                              ; preds = %306, %302
  %311 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %312 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %313 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %312, i32 0, i32 10
  store %struct.hci_dev* %311, %struct.hci_dev** %313, align 8
  %314 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %315 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %316 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %315, i32 0, i32 0
  %317 = call i32 @SET_HCIDEV_DEV(%struct.hci_dev* %314, i32* %316)
  %318 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %319 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %318, i32 0, i32 4
  %320 = load %struct.usb_device*, %struct.usb_device** %319, align 8
  %321 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %320, i32 0, i32 1
  %322 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %323 = call %struct.gpio_desc* @gpiod_get_optional(i32* %321, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %322)
  store %struct.gpio_desc* %323, %struct.gpio_desc** %7, align 8
  %324 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %325 = call i64 @IS_ERR(%struct.gpio_desc* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %310
  %328 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %329 = call i32 @PTR_ERR(%struct.gpio_desc* %328)
  store i32 %329, i32* %12, align 4
  br label %739

330:                                              ; preds = %310
  %331 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %332 = icmp ne %struct.gpio_desc* %331, null
  br i1 %332, label %333, label %337

333:                                              ; preds = %330
  %334 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %335 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %336 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %335, i32 0, i32 3
  store %struct.gpio_desc* %334, %struct.gpio_desc** %336, align 8
  br label %337

337:                                              ; preds = %333, %330
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* @btusb_open, align 4
  %340 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %341 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %340, i32 0, i32 12
  store i32 %339, i32* %341, align 4
  %342 = load i32, i32* @btusb_close, align 4
  %343 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %344 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %343, i32 0, i32 11
  store i32 %342, i32* %344, align 8
  %345 = load i32, i32* @btusb_flush, align 4
  %346 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %347 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %346, i32 0, i32 10
  store i32 %345, i32* %347, align 4
  %348 = load i32, i32* @btusb_send_frame, align 4
  %349 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %350 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %349, i32 0, i32 8
  store i32 %348, i32* %350, align 4
  %351 = load i32, i32* @btusb_notify, align 4
  %352 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %353 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %352, i32 0, i32 9
  store i32 %351, i32* %353, align 8
  %354 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %355 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @BTUSB_CW6622, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %365

360:                                              ; preds = %338
  %361 = load i32, i32* @HCI_QUIRK_BROKEN_STORED_LINK_KEY, align 4
  %362 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %363 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %362, i32 0, i32 1
  %364 = call i32 @set_bit(i32 %361, i32* %363)
  br label %365

365:                                              ; preds = %360, %338
  %366 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %367 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* @BTUSB_BCM2045, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %377

372:                                              ; preds = %365
  %373 = load i32, i32* @HCI_QUIRK_BROKEN_STORED_LINK_KEY, align 4
  %374 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %375 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %374, i32 0, i32 1
  %376 = call i32 @set_bit(i32 %373, i32* %375)
  br label %377

377:                                              ; preds = %372, %365
  %378 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %379 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* @BTUSB_BCM92035, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %388

384:                                              ; preds = %377
  %385 = load i32, i32* @btusb_setup_bcm92035, align 4
  %386 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %387 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %386, i32 0, i32 2
  store i32 %385, i32* %387, align 8
  br label %388

388:                                              ; preds = %384, %377
  %389 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %390 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* @BTUSB_INTEL, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %425

395:                                              ; preds = %388
  %396 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %397 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %396, i32 0, i32 0
  store i32 2, i32* %397, align 8
  %398 = load i32, i32* @btusb_setup_intel, align 4
  %399 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %400 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %399, i32 0, i32 2
  store i32 %398, i32* %400, align 8
  %401 = load i32, i32* @btusb_shutdown_intel, align 4
  %402 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %403 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %402, i32 0, i32 4
  store i32 %401, i32* %403, align 8
  %404 = load i8*, i8** @btintel_set_diag_mfg, align 8
  %405 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %406 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %405, i32 0, i32 6
  store i8* %404, i8** %406, align 8
  %407 = load i8*, i8** @btintel_set_bdaddr, align 8
  %408 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %409 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %408, i32 0, i32 5
  store i8* %407, i8** %409, align 8
  %410 = load i8*, i8** @btusb_intel_cmd_timeout, align 8
  %411 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %412 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %411, i32 0, i32 3
  store i8* %410, i8** %412, align 8
  %413 = load i32, i32* @HCI_QUIRK_STRICT_DUPLICATE_FILTER, align 4
  %414 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %415 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %414, i32 0, i32 1
  %416 = call i32 @set_bit(i32 %413, i32* %415)
  %417 = load i32, i32* @HCI_QUIRK_SIMULTANEOUS_DISCOVERY, align 4
  %418 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %419 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %418, i32 0, i32 1
  %420 = call i32 @set_bit(i32 %417, i32* %419)
  %421 = load i32, i32* @HCI_QUIRK_NON_PERSISTENT_DIAG, align 4
  %422 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %423 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %422, i32 0, i32 1
  %424 = call i32 @set_bit(i32 %421, i32* %423)
  br label %425

425:                                              ; preds = %395, %388
  %426 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %427 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 4
  %429 = load i32, i32* @BTUSB_INTEL_NEW, align 4
  %430 = and i32 %428, %429
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %468

432:                                              ; preds = %425
  %433 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %434 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %433, i32 0, i32 0
  store i32 2, i32* %434, align 8
  %435 = load i32, i32* @btusb_send_frame_intel, align 4
  %436 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %437 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %436, i32 0, i32 8
  store i32 %435, i32* %437, align 4
  %438 = load i32, i32* @btusb_setup_intel_new, align 4
  %439 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %440 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %439, i32 0, i32 2
  store i32 %438, i32* %440, align 8
  %441 = load i32, i32* @btusb_shutdown_intel_new, align 4
  %442 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %443 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %442, i32 0, i32 4
  store i32 %441, i32* %443, align 8
  %444 = load i32, i32* @btintel_hw_error, align 4
  %445 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %446 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %445, i32 0, i32 7
  store i32 %444, i32* %446, align 8
  %447 = load i8*, i8** @btintel_set_diag, align 8
  %448 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %449 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %448, i32 0, i32 6
  store i8* %447, i8** %449, align 8
  %450 = load i8*, i8** @btintel_set_bdaddr, align 8
  %451 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %452 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %451, i32 0, i32 5
  store i8* %450, i8** %452, align 8
  %453 = load i8*, i8** @btusb_intel_cmd_timeout, align 8
  %454 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %455 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %454, i32 0, i32 3
  store i8* %453, i8** %455, align 8
  %456 = load i32, i32* @HCI_QUIRK_STRICT_DUPLICATE_FILTER, align 4
  %457 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %458 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %457, i32 0, i32 1
  %459 = call i32 @set_bit(i32 %456, i32* %458)
  %460 = load i32, i32* @HCI_QUIRK_SIMULTANEOUS_DISCOVERY, align 4
  %461 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %462 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %461, i32 0, i32 1
  %463 = call i32 @set_bit(i32 %460, i32* %462)
  %464 = load i32, i32* @HCI_QUIRK_NON_PERSISTENT_DIAG, align 4
  %465 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %466 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %465, i32 0, i32 1
  %467 = call i32 @set_bit(i32 %464, i32* %466)
  br label %468

468:                                              ; preds = %432, %425
  %469 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %470 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 4
  %472 = load i32, i32* @BTUSB_MARVELL, align 4
  %473 = and i32 %471, %472
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %479

475:                                              ; preds = %468
  %476 = load i8*, i8** @btusb_set_bdaddr_marvell, align 8
  %477 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %478 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %477, i32 0, i32 5
  store i8* %476, i8** %478, align 8
  br label %479

479:                                              ; preds = %475, %468
  %480 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %481 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = load i32, i32* @BTUSB_SWAVE, align 4
  %484 = and i32 %482, %483
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %495

486:                                              ; preds = %479
  %487 = load i32, i32* @HCI_QUIRK_FIXUP_INQUIRY_MODE, align 4
  %488 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %489 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %488, i32 0, i32 1
  %490 = call i32 @set_bit(i32 %487, i32* %489)
  %491 = load i32, i32* @HCI_QUIRK_BROKEN_LOCAL_COMMANDS, align 4
  %492 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %493 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %492, i32 0, i32 1
  %494 = call i32 @set_bit(i32 %491, i32* %493)
  br label %495

495:                                              ; preds = %486, %479
  %496 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %497 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 4
  %499 = load i32, i32* @BTUSB_INTEL_BOOT, align 4
  %500 = and i32 %498, %499
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %509

502:                                              ; preds = %495
  %503 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %504 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %503, i32 0, i32 0
  store i32 2, i32* %504, align 8
  %505 = load i32, i32* @HCI_QUIRK_RAW_DEVICE, align 4
  %506 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %507 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %506, i32 0, i32 1
  %508 = call i32 @set_bit(i32 %505, i32* %507)
  br label %509

509:                                              ; preds = %502, %495
  %510 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %511 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 4
  %513 = load i32, i32* @BTUSB_ATH3012, align 4
  %514 = and i32 %512, %513
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %531

516:                                              ; preds = %509
  %517 = load i8*, i8** @btusb_setup_qca, align 8
  %518 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %519 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %518, i32 0, i32 8
  store i8* %517, i8** %519, align 8
  %520 = load i8*, i8** @btusb_set_bdaddr_ath3012, align 8
  %521 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %522 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %521, i32 0, i32 5
  store i8* %520, i8** %522, align 8
  %523 = load i32, i32* @HCI_QUIRK_SIMULTANEOUS_DISCOVERY, align 4
  %524 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %525 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %524, i32 0, i32 1
  %526 = call i32 @set_bit(i32 %523, i32* %525)
  %527 = load i32, i32* @HCI_QUIRK_STRICT_DUPLICATE_FILTER, align 4
  %528 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %529 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %528, i32 0, i32 1
  %530 = call i32 @set_bit(i32 %527, i32* %529)
  br label %531

531:                                              ; preds = %516, %509
  %532 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %533 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 4
  %535 = load i32, i32* @BTUSB_QCA_ROME, align 4
  %536 = and i32 %534, %535
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %551

538:                                              ; preds = %531
  %539 = load i8*, i8** @btusb_setup_qca, align 8
  %540 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %541 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %540, i32 0, i32 8
  store i8* %539, i8** %541, align 8
  %542 = load i8*, i8** @btusb_set_bdaddr_ath3012, align 8
  %543 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %544 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %543, i32 0, i32 5
  store i8* %542, i8** %544, align 8
  %545 = load i32, i32* @HCI_QUIRK_SIMULTANEOUS_DISCOVERY, align 4
  %546 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %547 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %546, i32 0, i32 1
  %548 = call i32 @set_bit(i32 %545, i32* %547)
  %549 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %550 = call i32 @btusb_check_needs_reset_resume(%struct.usb_interface* %549)
  br label %551

551:                                              ; preds = %538, %531
  %552 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %553 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 4
  %555 = load i32, i32* @BTUSB_AMP, align 4
  %556 = and i32 %554, %555
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %561

558:                                              ; preds = %551
  %559 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %560 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %559, i32 0, i32 6
  store i32* null, i32** %560, align 8
  br label %575

561:                                              ; preds = %551
  %562 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %563 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %562, i32 0, i32 4
  %564 = load %struct.usb_device*, %struct.usb_device** %563, align 8
  %565 = load i32, i32* %10, align 4
  %566 = add i32 %565, 1
  %567 = call i8* @usb_ifnum_to_if(%struct.usb_device* %564, i32 %566)
  %568 = bitcast i8* %567 to i32*
  %569 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %570 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %569, i32 0, i32 6
  store i32* %568, i32** %570, align 8
  %571 = load i32, i32* %10, align 4
  %572 = add i32 %571, 1
  %573 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %574 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %573, i32 0, i32 2
  store i32 %572, i32* %574, align 8
  br label %575

575:                                              ; preds = %561, %558
  %576 = load i32, i32* @reset, align 4
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %583, label %578

578:                                              ; preds = %575
  %579 = load i32, i32* @HCI_QUIRK_RESET_ON_CLOSE, align 4
  %580 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %581 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %580, i32 0, i32 1
  %582 = call i32 @set_bit(i32 %579, i32* %581)
  br label %583

583:                                              ; preds = %578, %575
  %584 = load i64, i64* @force_scofix, align 8
  %585 = icmp ne i64 %584, 0
  br i1 %585, label %593, label %586

586:                                              ; preds = %583
  %587 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %588 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %587, i32 0, i32 0
  %589 = load i32, i32* %588, align 4
  %590 = load i32, i32* @BTUSB_WRONG_SCO_MTU, align 4
  %591 = and i32 %589, %590
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %602

593:                                              ; preds = %586, %583
  %594 = load i32, i32* @disable_scofix, align 4
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %601, label %596

596:                                              ; preds = %593
  %597 = load i32, i32* @HCI_QUIRK_FIXUP_BUFFER_SIZE, align 4
  %598 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %599 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %598, i32 0, i32 1
  %600 = call i32 @set_bit(i32 %597, i32* %599)
  br label %601

601:                                              ; preds = %596, %593
  br label %602

602:                                              ; preds = %601, %586
  %603 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %604 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 4
  %606 = load i32, i32* @BTUSB_BROKEN_ISOC, align 4
  %607 = and i32 %605, %606
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %609, label %612

609:                                              ; preds = %602
  %610 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %611 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %610, i32 0, i32 6
  store i32* null, i32** %611, align 8
  br label %612

612:                                              ; preds = %609, %602
  %613 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %614 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %613, i32 0, i32 0
  %615 = load i32, i32* %614, align 4
  %616 = load i32, i32* @BTUSB_DIGIANSWER, align 4
  %617 = and i32 %615, %616
  %618 = icmp ne i32 %617, 0
  br i1 %618, label %619, label %627

619:                                              ; preds = %612
  %620 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %621 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %622 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %621, i32 0, i32 0
  store i32 %620, i32* %622, align 8
  %623 = load i32, i32* @HCI_QUIRK_RESET_ON_CLOSE, align 4
  %624 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %625 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %624, i32 0, i32 1
  %626 = call i32 @set_bit(i32 %623, i32* %625)
  br label %627

627:                                              ; preds = %619, %612
  %628 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %629 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %628, i32 0, i32 0
  %630 = load i32, i32* %629, align 4
  %631 = load i32, i32* @BTUSB_CSR, align 4
  %632 = and i32 %630, %631
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %634, label %665

634:                                              ; preds = %627
  %635 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %636 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %635, i32 0, i32 4
  %637 = load %struct.usb_device*, %struct.usb_device** %636, align 8
  store %struct.usb_device* %637, %struct.usb_device** %15, align 8
  %638 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %639 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %638, i32 0, i32 0
  %640 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %639, i32 0, i32 0
  %641 = load i32, i32* %640, align 4
  %642 = call i32 @le16_to_cpu(i32 %641)
  store i32 %642, i32* %16, align 4
  %643 = load i32, i32* %16, align 4
  %644 = icmp slt i32 %643, 279
  br i1 %644, label %645, label %650

645:                                              ; preds = %634
  %646 = load i32, i32* @HCI_QUIRK_RESET_ON_CLOSE, align 4
  %647 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %648 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %647, i32 0, i32 1
  %649 = call i32 @set_bit(i32 %646, i32* %648)
  br label %650

650:                                              ; preds = %645, %634
  %651 = load i32, i32* %16, align 4
  %652 = icmp sle i32 %651, 256
  br i1 %652, label %656, label %653

653:                                              ; preds = %650
  %654 = load i32, i32* %16, align 4
  %655 = icmp eq i32 %654, 308
  br i1 %655, label %656, label %660

656:                                              ; preds = %653, %650
  %657 = load i32, i32* @btusb_setup_csr, align 4
  %658 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %659 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %658, i32 0, i32 2
  store i32 %657, i32* %659, align 8
  br label %660

660:                                              ; preds = %656, %653
  %661 = load i32, i32* @HCI_QUIRK_SIMULTANEOUS_DISCOVERY, align 4
  %662 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %663 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %662, i32 0, i32 1
  %664 = call i32 @set_bit(i32 %661, i32* %663)
  br label %665

665:                                              ; preds = %660, %627
  %666 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %667 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %666, i32 0, i32 0
  %668 = load i32, i32* %667, align 4
  %669 = load i32, i32* @BTUSB_SNIFFER, align 4
  %670 = and i32 %668, %669
  %671 = icmp ne i32 %670, 0
  br i1 %671, label %672, label %688

672:                                              ; preds = %665
  %673 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %674 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %673, i32 0, i32 4
  %675 = load %struct.usb_device*, %struct.usb_device** %674, align 8
  store %struct.usb_device* %675, %struct.usb_device** %17, align 8
  %676 = load %struct.usb_device*, %struct.usb_device** %17, align 8
  %677 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %676, i32 0, i32 0
  %678 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %677, i32 0, i32 0
  %679 = load i32, i32* %678, align 4
  %680 = call i32 @le16_to_cpu(i32 %679)
  %681 = icmp sgt i32 %680, 2455
  br i1 %681, label %682, label %687

682:                                              ; preds = %672
  %683 = load i32, i32* @HCI_QUIRK_RAW_DEVICE, align 4
  %684 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %685 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %684, i32 0, i32 1
  %686 = call i32 @set_bit(i32 %683, i32* %685)
  br label %687

687:                                              ; preds = %682, %672
  br label %688

688:                                              ; preds = %687, %665
  %689 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %690 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %689, i32 0, i32 0
  %691 = load i32, i32* %690, align 4
  %692 = load i32, i32* @BTUSB_INTEL_BOOT, align 4
  %693 = and i32 %691, %692
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %706

695:                                              ; preds = %688
  %696 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %697 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %696, i32 0, i32 4
  %698 = load %struct.usb_device*, %struct.usb_device** %697, align 8
  %699 = call i32 @usb_set_interface(%struct.usb_device* %698, i32 0, i32 0)
  store i32 %699, i32* %12, align 4
  %700 = load i32, i32* %12, align 4
  %701 = icmp slt i32 %700, 0
  br i1 %701, label %702, label %705

702:                                              ; preds = %695
  %703 = load i32, i32* %12, align 4
  %704 = call i32 @BT_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %703)
  br label %739

705:                                              ; preds = %695
  br label %706

706:                                              ; preds = %705, %688
  %707 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %708 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %707, i32 0, i32 6
  %709 = load i32*, i32** %708, align 8
  %710 = icmp ne i32* %709, null
  br i1 %710, label %711, label %721

711:                                              ; preds = %706
  %712 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %713 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %712, i32 0, i32 6
  %714 = load i32*, i32** %713, align 8
  %715 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %716 = call i32 @usb_driver_claim_interface(i32* @btusb_driver, i32* %714, %struct.btusb_data* %715)
  store i32 %716, i32* %12, align 4
  %717 = load i32, i32* %12, align 4
  %718 = icmp slt i32 %717, 0
  br i1 %718, label %719, label %720

719:                                              ; preds = %711
  br label %739

720:                                              ; preds = %711
  br label %721

721:                                              ; preds = %720, %706
  %722 = load i64, i64* @enable_autosuspend, align 8
  %723 = icmp ne i64 %722, 0
  br i1 %723, label %724, label %729

724:                                              ; preds = %721
  %725 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %726 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %725, i32 0, i32 4
  %727 = load %struct.usb_device*, %struct.usb_device** %726, align 8
  %728 = call i32 @usb_enable_autosuspend(%struct.usb_device* %727)
  br label %729

729:                                              ; preds = %724, %721
  %730 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %731 = call i32 @hci_register_dev(%struct.hci_dev* %730)
  store i32 %731, i32* %12, align 4
  %732 = load i32, i32* %12, align 4
  %733 = icmp slt i32 %732, 0
  br i1 %733, label %734, label %735

734:                                              ; preds = %729
  br label %739

735:                                              ; preds = %729
  %736 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %737 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %738 = call i32 @usb_set_intfdata(%struct.usb_interface* %736, %struct.btusb_data* %737)
  store i32 0, i32* %3, align 4
  br label %753

739:                                              ; preds = %734, %719, %702, %327
  %740 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %741 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %740, i32 0, i32 3
  %742 = load %struct.gpio_desc*, %struct.gpio_desc** %741, align 8
  %743 = icmp ne %struct.gpio_desc* %742, null
  br i1 %743, label %744, label %749

744:                                              ; preds = %739
  %745 = load %struct.btusb_data*, %struct.btusb_data** %8, align 8
  %746 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %745, i32 0, i32 3
  %747 = load %struct.gpio_desc*, %struct.gpio_desc** %746, align 8
  %748 = call i32 @gpiod_put(%struct.gpio_desc* %747)
  br label %749

749:                                              ; preds = %744, %739
  %750 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  %751 = call i32 @hci_free_dev(%struct.hci_dev* %750)
  %752 = load i32, i32* %12, align 4
  store i32 %752, i32* %3, align 4
  br label %753

753:                                              ; preds = %749, %735, %286, %191, %111, %100, %76, %46, %35
  %754 = load i32, i32* %3, align 4
  ret i32 %754
}

declare dso_local i32 @BT_DBG(i8*, %struct.usb_interface*, %struct.usb_device_id*) #1

declare dso_local %struct.usb_device_id* @usb_match_id(%struct.usb_interface*, i32) #1

declare dso_local i8* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @btusb_qca_need_patch(%struct.usb_device*) #1

declare dso_local %struct.btusb_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @hci_set_drvdata(%struct.hci_dev*, %struct.btusb_data*) #1

declare dso_local i32 @SET_HCIDEV_DEV(%struct.hci_dev*, i32*) #1

declare dso_local %struct.gpio_desc* @gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @btusb_check_needs_reset_resume(%struct.usb_interface*) #1

declare dso_local i8* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i32 @usb_driver_claim_interface(i32*, i32*, %struct.btusb_data*) #1

declare dso_local i32 @usb_enable_autosuspend(%struct.usb_device*) #1

declare dso_local i32 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.btusb_data*) #1

declare dso_local i32 @gpiod_put(%struct.gpio_desc*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
