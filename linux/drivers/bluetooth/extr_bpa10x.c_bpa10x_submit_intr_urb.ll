; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bpa10x.c_bpa10x_submit_intr_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bpa10x.c_bpa10x_submit_intr_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.bpa10x_data = type { i32, i32 }
%struct.urb = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bpa10x_rx_complete = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"urb %p submission failed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @bpa10x_submit_intr_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpa10x_submit_intr_urb(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.bpa10x_data*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %10 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %11 = call %struct.bpa10x_data* @hci_get_drvdata(%struct.hci_dev* %10)
  store %struct.bpa10x_data* %11, %struct.bpa10x_data** %4, align 8
  store i32 16, i32* %9, align 4
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %16)
  store %struct.urb* %17, %struct.urb** %5, align 8
  %18 = load %struct.urb*, %struct.urb** %5, align 8
  %19 = icmp ne %struct.urb* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %75

23:                                               ; preds = %1
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kmalloc(i32 %24, i32 %25)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load %struct.urb*, %struct.urb** %5, align 8
  %31 = call i32 @usb_free_urb(%struct.urb* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %75

34:                                               ; preds = %23
  %35 = load %struct.bpa10x_data*, %struct.bpa10x_data** %4, align 8
  %36 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usb_rcvintpipe(i32 %37, i32 129)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.urb*, %struct.urb** %5, align 8
  %40 = load %struct.bpa10x_data*, %struct.bpa10x_data** %4, align 8
  %41 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @bpa10x_rx_complete, align 4
  %47 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %48 = call i32 @usb_fill_int_urb(%struct.urb* %39, i32 %42, i32 %43, i8* %44, i32 %45, i32 %46, %struct.hci_dev* %47, i32 1)
  %49 = load i32, i32* @URB_FREE_BUFFER, align 4
  %50 = load %struct.urb*, %struct.urb** %5, align 8
  %51 = getelementptr inbounds %struct.urb, %struct.urb* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.urb*, %struct.urb** %5, align 8
  %55 = load %struct.bpa10x_data*, %struct.bpa10x_data** %4, align 8
  %56 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %55, i32 0, i32 0
  %57 = call i32 @usb_anchor_urb(%struct.urb* %54, i32* %56)
  %58 = load %struct.urb*, %struct.urb** %5, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i32 @usb_submit_urb(%struct.urb* %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %34
  %64 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %65 = load %struct.urb*, %struct.urb** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 0, %66
  %68 = call i32 @bt_dev_err(%struct.hci_dev* %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.urb* %65, i32 %67)
  %69 = load %struct.urb*, %struct.urb** %5, align 8
  %70 = call i32 @usb_unanchor_urb(%struct.urb* %69)
  br label %71

71:                                               ; preds = %63, %34
  %72 = load %struct.urb*, %struct.urb** %5, align 8
  %73 = call i32 @usb_free_urb(%struct.urb* %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %71, %29, %20
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.bpa10x_data* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

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
