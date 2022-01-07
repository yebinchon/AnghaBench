; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_submit_isoc_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_submit_isoc_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btusb_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.urb = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BTUSB_MAX_ISOC_FRAMES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@btusb_isoc_complete = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"urb %p submission failed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i32)* @btusb_submit_isoc_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_submit_isoc_urb(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btusb_data*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %13 = call %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev* %12)
  store %struct.btusb_data* %13, %struct.btusb_data** %6, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %19 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %124

25:                                               ; preds = %2
  %26 = load i32, i32* @BTUSB_MAX_ISOC_FRAMES, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.urb* @usb_alloc_urb(i32 %26, i32 %27)
  store %struct.urb* %28, %struct.urb** %7, align 8
  %29 = load %struct.urb*, %struct.urb** %7, align 8
  %30 = icmp ne %struct.urb* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %124

34:                                               ; preds = %25
  %35 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %36 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  %41 = load i32, i32* @BTUSB_MAX_ISOC_FRAMES, align 4
  %42 = mul nsw i32 %40, %41
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i8* @kmalloc(i32 %43, i32 %44)
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %34
  %49 = load %struct.urb*, %struct.urb** %7, align 8
  %50 = call i32 @usb_free_urb(%struct.urb* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %124

53:                                               ; preds = %34
  %54 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %55 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %58 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @usb_rcvisocpipe(i32 %56, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load %struct.urb*, %struct.urb** %7, align 8
  %64 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %65 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @btusb_isoc_complete, align 4
  %71 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %72 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %73 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @usb_fill_int_urb(%struct.urb* %63, i32 %66, i32 %67, i8* %68, i32 %69, i32 %70, %struct.hci_dev* %71, i32 %76)
  %78 = load i32, i32* @URB_FREE_BUFFER, align 4
  %79 = load i32, i32* @URB_ISO_ASAP, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.urb*, %struct.urb** %7, align 8
  %82 = getelementptr inbounds %struct.urb, %struct.urb* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.urb*, %struct.urb** %7, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %86 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le16_to_cpu(i32 %89)
  %91 = call i32 @__fill_isoc_descriptor(%struct.urb* %83, i32 %84, i32 %90)
  %92 = load %struct.urb*, %struct.urb** %7, align 8
  %93 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %94 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %93, i32 0, i32 0
  %95 = call i32 @usb_anchor_urb(%struct.urb* %92, i32* %94)
  %96 = load %struct.urb*, %struct.urb** %7, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @usb_submit_urb(%struct.urb* %96, i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %53
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @EPERM, align 4
  %104 = sub nsw i32 0, %103
  %105 = icmp ne i32 %102, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %101
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @ENODEV, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp ne i32 %107, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %113 = load %struct.urb*, %struct.urb** %7, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sub nsw i32 0, %114
  %116 = call i32 @bt_dev_err(%struct.hci_dev* %112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.urb* %113, i32 %115)
  br label %117

117:                                              ; preds = %111, %106, %101
  %118 = load %struct.urb*, %struct.urb** %7, align 8
  %119 = call i32 @usb_unanchor_urb(%struct.urb* %118)
  br label %120

120:                                              ; preds = %117, %53
  %121 = load %struct.urb*, %struct.urb** %7, align 8
  %122 = call i32 @usb_free_urb(%struct.urb* %121)
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %120, %48, %31, %22
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_rcvisocpipe(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, i8*, i32, i32, %struct.hci_dev*, i32) #1

declare dso_local i32 @__fill_isoc_descriptor(%struct.urb*, i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, %struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
