; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_setup_intel_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_setup_intel_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i32 }
%struct.btusb_data = type { i32 }
%struct.intel_version = type { i32, i32, i32 }
%struct.intel_boot_params = type { i32, i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Unsupported Intel hardware platform (%u)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Unsupported Intel hardware variant (%u)\00", align 1
@BTUSB_BOOTLOADER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Unsupported Intel firmware variant (%u)\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Unsupported Intel firmware loading method (%u)\00", align 1
@BDADDR_ANY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"No device address configured\00", align 1
@HCI_QUIRK_INVALID_BDADDR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"sfi\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Unsupported Intel firmware naming\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Failed to load Intel firmware file (%d)\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Found device firmware: %s\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"ddc\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Invalid size of firmware file (%zu)\00", align 1
@EBADF = common dso_local global i32 0, align 4
@BTUSB_DOWNLOADING = common dso_local global i32 0, align 4
@BTUSB_FIRMWARE_LOADED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [42 x i8] c"Waiting for firmware download to complete\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [29 x i8] c"Firmware loading interrupted\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Firmware loading timeout\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@BTUSB_FIRMWARE_FAILED = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"Firmware loading failed\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [30 x i8] c"Firmware loaded in %llu usecs\00", align 1
@BTUSB_BOOTING = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [27 x i8] c"Waiting for device to boot\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Device boot interrupted\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Device boot timeout\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"Device booted in %llu usecs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @btusb_setup_intel_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_setup_intel_new(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.btusb_data*, align 8
  %5 = alloca %struct.intel_version, align 4
  %6 = alloca %struct.intel_boot_params, align 4
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %15 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %16 = call %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev* %15)
  store %struct.btusb_data* %16, %struct.btusb_data** %4, align 8
  %17 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 0, i32* %8, align 4
  %21 = call i32 (...) @ktime_get()
  store i32 %21, i32* %10, align 4
  %22 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %23 = call i32 @btintel_read_version(%struct.hci_dev* %22, %struct.intel_version* %5)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %2, align 4
  br label %279

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 55
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %279

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %5, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %43 [
    i32 11, label %42
    i32 12, label %42
    i32 17, label %42
    i32 18, label %42
    i32 19, label %42
    i32 20, label %42
  ]

42:                                               ; preds = %39, %39, %39, %39, %39, %39
  br label %50

43:                                               ; preds = %39
  %44 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %45 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %5, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %279

50:                                               ; preds = %42
  %51 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %52 = call i32 @btintel_version_info(%struct.hci_dev* %51, %struct.intel_version* %5)
  %53 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %5, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 35
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i32, i32* @BTUSB_BOOTLOADER, align 4
  %58 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %59 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %58, i32 0, i32 0
  %60 = call i32 @clear_bit(i32 %57, i32* %59)
  %61 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %62 = call i32 @btintel_check_bdaddr(%struct.hci_dev* %61)
  store i32 0, i32* %2, align 4
  br label %279

63:                                               ; preds = %50
  %64 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %5, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 6
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %69 = getelementptr inbounds %struct.intel_version, %struct.intel_version* %5, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %279

74:                                               ; preds = %63
  %75 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %76 = call i32 @btintel_read_boot_params(%struct.hci_dev* %75, %struct.intel_boot_params* %6)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %2, align 4
  br label %279

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.intel_boot_params, %struct.intel_boot_params* %6, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %87 = getelementptr inbounds %struct.intel_boot_params, %struct.intel_boot_params* %6, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %86, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %279

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct.intel_boot_params, %struct.intel_boot_params* %6, i32 0, i32 1
  %94 = load i32, i32* @BDADDR_ANY, align 4
  %95 = call i32 @bacmp(i32* %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %92
  %98 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %99 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %100 = load i32, i32* @HCI_QUIRK_INVALID_BDADDR, align 4
  %101 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %102 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %101, i32 0, i32 1
  %103 = call i32 @set_bit(i32 %100, i32* %102)
  br label %104

104:                                              ; preds = %97, %92
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %106 = call i32 @btusb_setup_intel_new_get_fw_name(%struct.intel_version* %5, %struct.intel_boot_params* %6, i8* %105, i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %111 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %110, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %279

114:                                              ; preds = %104
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %116 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %117 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %116, i32 0, i32 0
  %118 = call i32 @request_firmware(%struct.firmware** %7, i8* %115, i32* %117)
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %114
  %122 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %123 = load i32, i32* %14, align 4
  %124 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %122, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %2, align 4
  br label %279

126:                                              ; preds = %114
  %127 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %128 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %129 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %127, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %128)
  %130 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %131 = call i32 @btusb_setup_intel_new_get_fw_name(%struct.intel_version* %5, %struct.intel_boot_params* %6, i8* %130, i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %126
  %135 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %136 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %135, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %279

139:                                              ; preds = %126
  %140 = load %struct.firmware*, %struct.firmware** %7, align 8
  %141 = getelementptr inbounds %struct.firmware, %struct.firmware* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %142, 644
  br i1 %143, label %144, label %152

144:                                              ; preds = %139
  %145 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %146 = load %struct.firmware*, %struct.firmware** %7, align 8
  %147 = getelementptr inbounds %struct.firmware, %struct.firmware* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %145, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* @EBADF, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %14, align 4
  br label %213

152:                                              ; preds = %139
  %153 = load i32, i32* @BTUSB_DOWNLOADING, align 4
  %154 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %155 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %154, i32 0, i32 0
  %156 = call i32 @set_bit(i32 %153, i32* %155)
  %157 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %158 = load %struct.firmware*, %struct.firmware** %7, align 8
  %159 = call i32 @btintel_download_firmware(%struct.hci_dev* %157, %struct.firmware* %158, i32* %8)
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %14, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %152
  br label %213

163:                                              ; preds = %152
  %164 = load i32, i32* @BTUSB_FIRMWARE_LOADED, align 4
  %165 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %166 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %165, i32 0, i32 0
  %167 = call i32 @set_bit(i32 %164, i32* %166)
  %168 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %169 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %168, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  %170 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %171 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %170, i32 0, i32 0
  %172 = load i32, i32* @BTUSB_DOWNLOADING, align 4
  %173 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %174 = call i32 @msecs_to_jiffies(i32 5000)
  %175 = call i32 @wait_on_bit_timeout(i32* %171, i32 %172, i32 %173, i32 %174)
  store i32 %175, i32* %14, align 4
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* @EINTR, align 4
  %178 = sub nsw i32 0, %177
  %179 = icmp eq i32 %176, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %163
  %181 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %182 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %181, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %213

183:                                              ; preds = %163
  %184 = load i32, i32* %14, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %183
  %187 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %188 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %187, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %189 = load i32, i32* @ETIMEDOUT, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %14, align 4
  br label %213

191:                                              ; preds = %183
  %192 = load i32, i32* @BTUSB_FIRMWARE_FAILED, align 4
  %193 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %194 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %193, i32 0, i32 0
  %195 = call i64 @test_bit(i32 %192, i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %191
  %198 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %199 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %198, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  %200 = load i32, i32* @ENOEXEC, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %14, align 4
  br label %213

202:                                              ; preds = %191
  %203 = call i32 (...) @ktime_get()
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* %10, align 4
  %206 = call i32 @ktime_sub(i32 %204, i32 %205)
  store i32 %206, i32* %11, align 4
  %207 = load i32, i32* %11, align 4
  %208 = call i64 @ktime_to_ns(i32 %207)
  %209 = lshr i64 %208, 10
  store i64 %209, i64* %13, align 8
  %210 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %211 = load i64, i64* %13, align 8
  %212 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %210, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i64 %211)
  br label %213

213:                                              ; preds = %202, %197, %186, %180, %162, %144
  %214 = load %struct.firmware*, %struct.firmware** %7, align 8
  %215 = call i32 @release_firmware(%struct.firmware* %214)
  %216 = load i32, i32* %14, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  %219 = load i32, i32* %14, align 4
  store i32 %219, i32* %2, align 4
  br label %279

220:                                              ; preds = %213
  %221 = call i32 (...) @ktime_get()
  store i32 %221, i32* %10, align 4
  %222 = load i32, i32* @BTUSB_BOOTING, align 4
  %223 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %224 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %223, i32 0, i32 0
  %225 = call i32 @set_bit(i32 %222, i32* %224)
  %226 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %227 = load i32, i32* %8, align 4
  %228 = call i32 @btintel_send_intel_reset(%struct.hci_dev* %226, i32 %227)
  store i32 %228, i32* %14, align 4
  %229 = load i32, i32* %14, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %220
  %232 = load i32, i32* %14, align 4
  store i32 %232, i32* %2, align 4
  br label %279

233:                                              ; preds = %220
  %234 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %235 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %234, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  %236 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %237 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %236, i32 0, i32 0
  %238 = load i32, i32* @BTUSB_BOOTING, align 4
  %239 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %240 = call i32 @msecs_to_jiffies(i32 1000)
  %241 = call i32 @wait_on_bit_timeout(i32* %237, i32 %238, i32 %239, i32 %240)
  store i32 %241, i32* %14, align 4
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* @EINTR, align 4
  %244 = sub nsw i32 0, %243
  %245 = icmp eq i32 %242, %244
  br i1 %245, label %246, label %251

246:                                              ; preds = %233
  %247 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %248 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %247, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  %249 = load i32, i32* @EINTR, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %2, align 4
  br label %279

251:                                              ; preds = %233
  %252 = load i32, i32* %14, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %251
  %255 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %256 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %255, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  %257 = load i32, i32* @ETIMEDOUT, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %2, align 4
  br label %279

259:                                              ; preds = %251
  %260 = call i32 (...) @ktime_get()
  store i32 %260, i32* %12, align 4
  %261 = load i32, i32* %12, align 4
  %262 = load i32, i32* %10, align 4
  %263 = call i32 @ktime_sub(i32 %261, i32 %262)
  store i32 %263, i32* %11, align 4
  %264 = load i32, i32* %11, align 4
  %265 = call i64 @ktime_to_ns(i32 %264)
  %266 = lshr i64 %265, 10
  store i64 %266, i64* %13, align 8
  %267 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %268 = load i64, i64* %13, align 8
  %269 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_info(%struct.hci_dev* %267, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i64 %268)
  %270 = load i32, i32* @BTUSB_BOOTLOADER, align 4
  %271 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %272 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %271, i32 0, i32 0
  %273 = call i32 @clear_bit(i32 %270, i32* %272)
  %274 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %275 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %276 = call i32 @btintel_load_ddc_config(%struct.hci_dev* %274, i8* %275)
  %277 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %278 = call i32 @btintel_set_event_mask(%struct.hci_dev* %277, i32 0)
  store i32 0, i32* %2, align 4
  br label %279

279:                                              ; preds = %259, %254, %246, %231, %218, %134, %121, %109, %85, %79, %67, %56, %43, %32, %26
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

declare dso_local %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @btintel_read_version(%struct.hci_dev*, %struct.intel_version*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @btintel_version_info(%struct.hci_dev*, %struct.intel_version*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @btintel_check_bdaddr(%struct.hci_dev*) #1

declare dso_local i32 @btintel_read_boot_params(%struct.hci_dev*, %struct.intel_boot_params*) #1

declare dso_local i32 @bacmp(i32*, i32) #1

declare dso_local i32 @bt_dev_info(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @btusb_setup_intel_new_get_fw_name(%struct.intel_version*, %struct.intel_boot_params*, i8*, i32, i8*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @btintel_download_firmware(%struct.hci_dev*, %struct.firmware*, i32*) #1

declare dso_local i32 @wait_on_bit_timeout(i32*, i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @btintel_send_intel_reset(%struct.hci_dev*, i32) #1

declare dso_local i32 @btintel_load_ddc_config(%struct.hci_dev*, i8*) #1

declare dso_local i32 @btintel_set_event_mask(%struct.hci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
