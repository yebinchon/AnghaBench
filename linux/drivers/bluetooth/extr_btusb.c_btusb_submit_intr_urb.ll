; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_submit_intr_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_submit_intr_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btusb_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.urb = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@btusb_intr_complete = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"urb %p submission failed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i32)* @btusb_submit_intr_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_submit_intr_urb(%struct.hci_dev* %0, i32 %1) #0 {
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
  br label %112

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %26)
  store %struct.urb* %27, %struct.urb** %7, align 8
  %28 = load %struct.urb*, %struct.urb** %7, align 8
  %29 = icmp ne %struct.urb* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %112

33:                                               ; preds = %25
  %34 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %35 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le16_to_cpu(i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i8* @kmalloc(i32 %40, i32 %41)
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %33
  %46 = load %struct.urb*, %struct.urb** %7, align 8
  %47 = call i32 @usb_free_urb(%struct.urb* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %112

50:                                               ; preds = %33
  %51 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %52 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %55 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @usb_rcvintpipe(i32 %53, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.urb*, %struct.urb** %7, align 8
  %61 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %62 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @btusb_intr_complete, align 4
  %68 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %69 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %70 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @usb_fill_int_urb(%struct.urb* %60, i32 %63, i32 %64, i8* %65, i32 %66, i32 %67, %struct.hci_dev* %68, i32 %73)
  %75 = load i32, i32* @URB_FREE_BUFFER, align 4
  %76 = load %struct.urb*, %struct.urb** %7, align 8
  %77 = getelementptr inbounds %struct.urb, %struct.urb* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.urb*, %struct.urb** %7, align 8
  %81 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %82 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %81, i32 0, i32 0
  %83 = call i32 @usb_anchor_urb(%struct.urb* %80, i32* %82)
  %84 = load %struct.urb*, %struct.urb** %7, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @usb_submit_urb(%struct.urb* %84, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %50
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @EPERM, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp ne i32 %90, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp ne i32 %95, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %101 = load %struct.urb*, %struct.urb** %7, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sub nsw i32 0, %102
  %104 = call i32 @bt_dev_err(%struct.hci_dev* %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.urb* %101, i32 %103)
  br label %105

105:                                              ; preds = %99, %94, %89
  %106 = load %struct.urb*, %struct.urb** %7, align 8
  %107 = call i32 @usb_unanchor_urb(%struct.urb* %106)
  br label %108

108:                                              ; preds = %105, %50
  %109 = load %struct.urb*, %struct.urb** %7, align 8
  %110 = call i32 @usb_free_urb(%struct.urb* %109)
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %108, %45, %30, %22
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, i8*, i32, i32, %struct.hci_dev*, i32) #1

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
