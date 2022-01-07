; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bfusb.c_bfusb_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bfusb.c_bfusb_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfusb_data = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64* }

@.str = private unnamed_addr constant [17 x i8] c"bfusb %p udev %p\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"BlueFRITZ! USB loading firmware\00", align 1
@BFUSB_MAX_BLOCK_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Can't allocate memory chunk for firmware\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@USB_REQ_SET_CONFIGURATION = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Can't change to loading configuration\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@uint = common dso_local global i32 0, align 4
@BFUSB_BLOCK_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Error in firmware loading\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Error in null packet request\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Can't change to running configuration\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"BlueFRITZ! USB device ready\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfusb_data*, i8*, i32)* @bfusb_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfusb_load_firmware(%struct.bfusb_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfusb_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bfusb_data* %0, %struct.bfusb_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %15 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %16 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.bfusb_data* %14, %struct.TYPE_6__* %17)
  %19 = call i32 @BT_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i64, i64* @BFUSB_MAX_BLOCK_SIZE, align 8
  %21 = add nsw i64 %20, 3
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kmalloc(i64 %21, i32 %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = call i32 @BT_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %166

30:                                               ; preds = %3
  %31 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %32 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = call i32 @usb_sndctrlpipe(%struct.TYPE_6__* %33, i32 0)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %36 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @USB_REQ_SET_CONFIGURATION, align 4
  %40 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %41 = call i32 @usb_control_msg(%struct.TYPE_6__* %37, i32 %38, i32 %39, i32 0, i32 1, i32 0, i32* null, i32 0, i32 %40)
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %30
  %44 = call i32 @BT_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @kfree(i8* %45)
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %166

49:                                               ; preds = %30
  %50 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %51 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %57 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %63 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %66 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @usb_sndbulkpipe(%struct.TYPE_6__* %64, i32 %67)
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %101, %49
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %108

72:                                               ; preds = %69
  %73 = load i32, i32* @uint, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i64, i64* @BFUSB_MAX_BLOCK_SIZE, align 8
  %76 = add nsw i64 %75, 3
  %77 = call i32 @min_t(i32 %73, i32 %74, i64 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @memcpy(i8* %78, i8* %82, i32 %83)
  %85 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %86 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i8*, i8** %8, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @BFUSB_BLOCK_TIMEOUT, align 4
  %92 = call i32 @usb_bulk_msg(%struct.TYPE_6__* %87, i32 %88, i8* %89, i32 %90, i32* %11, i32 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %72
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95, %72
  %100 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %151

101:                                              ; preds = %95
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %7, align 4
  %107 = sub nsw i32 %106, %105
  store i32 %107, i32* %7, align 4
  br label %69

108:                                              ; preds = %69
  %109 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %110 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @BFUSB_BLOCK_TIMEOUT, align 4
  %114 = call i32 @usb_bulk_msg(%struct.TYPE_6__* %111, i32 %112, i8* null, i32 0, i32* %11, i32 %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = call i32 @BT_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %151

119:                                              ; preds = %108
  %120 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %121 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %120, i32 0, i32 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = call i32 @usb_sndctrlpipe(%struct.TYPE_6__* %122, i32 0)
  store i32 %123, i32* %10, align 4
  %124 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %125 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @USB_REQ_SET_CONFIGURATION, align 4
  %129 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %130 = call i32 @usb_control_msg(%struct.TYPE_6__* %126, i32 %127, i32 %128, i32 0, i32 2, i32 0, i32* null, i32 0, i32 %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %119
  %134 = call i32 @BT_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %151

135:                                              ; preds = %119
  %136 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %137 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 1
  store i64 0, i64* %141, align 8
  %142 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %143 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %142, i32 0, i32 0
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 0
  store i64 0, i64* %147, align 8
  %148 = call i32 @BT_INFO(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %149 = load i8*, i8** %8, align 8
  %150 = call i32 @kfree(i8* %149)
  store i32 0, i32* %4, align 4
  br label %166

151:                                              ; preds = %133, %117, %99
  %152 = load i8*, i8** %8, align 8
  %153 = call i32 @kfree(i8* %152)
  %154 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %155 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %154, i32 0, i32 0
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = call i32 @usb_sndctrlpipe(%struct.TYPE_6__* %156, i32 0)
  store i32 %157, i32* %10, align 4
  %158 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %159 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %158, i32 0, i32 0
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @USB_REQ_SET_CONFIGURATION, align 4
  %163 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %164 = call i32 @usb_control_msg(%struct.TYPE_6__* %160, i32 %161, i32 %162, i32 0, i32 0, i32 0, i32* null, i32 0, i32 %163)
  %165 = load i32, i32* %9, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %151, %135, %43, %26
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @BT_DBG(i8*, %struct.bfusb_data*, %struct.TYPE_6__*) #1

declare dso_local i32 @BT_INFO(i8*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_6__*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @min_t(i32, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @usb_bulk_msg(%struct.TYPE_6__*, i32, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
