; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_diag_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_diag_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.btusb_data = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s urb %p status %d count %d\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@BTUSB_DIAG_RUNNING = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"urb %p failed to resubmit (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @btusb_diag_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btusb_diag_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.btusb_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 3
  %9 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  store %struct.hci_dev* %9, %struct.hci_dev** %3, align 8
  %10 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %11 = call %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev* %10)
  store %struct.btusb_data* %11, %struct.btusb_data** %4, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.urb*, %struct.urb** %2, align 8
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.urb*, %struct.urb** %2, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14, %struct.urb* %15, i32 %18, i32 %21)
  %23 = load %struct.urb*, %struct.urb** %2, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %1
  %28 = load %struct.urb*, %struct.urb** %2, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.sk_buff* @bt_skb_alloc(i32 %30, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %6, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %27
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = load %struct.urb*, %struct.urb** %2, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.urb*, %struct.urb** %2, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @skb_put_data(%struct.sk_buff* %36, i32 %39, i32 %42)
  %44 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = call i32 @hci_recv_diag(%struct.hci_dev* %44, %struct.sk_buff* %45)
  br label %47

47:                                               ; preds = %35, %27
  br label %57

48:                                               ; preds = %1
  %49 = load %struct.urb*, %struct.urb** %2, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ENOENT, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %97

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %47
  %58 = load i32, i32* @BTUSB_DIAG_RUNNING, align 4
  %59 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %60 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %59, i32 0, i32 2
  %61 = call i32 @test_bit(i32 %58, i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  br label %97

64:                                               ; preds = %57
  %65 = load %struct.urb*, %struct.urb** %2, align 8
  %66 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %67 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %66, i32 0, i32 1
  %68 = call i32 @usb_anchor_urb(%struct.urb* %65, i32* %67)
  %69 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %70 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @usb_mark_last_busy(i32 %71)
  %73 = load %struct.urb*, %struct.urb** %2, align 8
  %74 = load i32, i32* @GFP_ATOMIC, align 4
  %75 = call i32 @usb_submit_urb(%struct.urb* %73, i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %64
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @EPERM, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %90 = load %struct.urb*, %struct.urb** %2, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sub nsw i32 0, %91
  %93 = call i32 @bt_dev_err(%struct.hci_dev* %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.urb* %90, i32 %92)
  br label %94

94:                                               ; preds = %88, %83, %78
  %95 = load %struct.urb*, %struct.urb** %2, align 8
  %96 = call i32 @usb_unanchor_urb(%struct.urb* %95)
  br label %97

97:                                               ; preds = %55, %63, %94, %64
  ret void
}

declare dso_local %struct.btusb_data* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @BT_DBG(i8*, i32, %struct.urb*, i32, i32) #1

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @hci_recv_diag(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_mark_last_busy(i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, %struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
