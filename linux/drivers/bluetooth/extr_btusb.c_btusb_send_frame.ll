; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_send_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btusb.c_btusb_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.urb = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SCO_LINK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.sk_buff*)* @btusb_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_send_frame(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.urb*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %8 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %11)
  switch i32 %12, label %78 [
    i32 129, label %13
    i32 130, label %32
    i32 128, label %51
  ]

13:                                               ; preds = %2
  %14 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.urb* @alloc_ctrl_urb(%struct.hci_dev* %14, %struct.sk_buff* %15)
  store %struct.urb* %16, %struct.urb** %6, align 8
  %17 = load %struct.urb*, %struct.urb** %6, align 8
  %18 = call i32 @IS_ERR(%struct.urb* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.urb*, %struct.urb** %6, align 8
  %22 = call i32 @PTR_ERR(%struct.urb* %21)
  store i32 %22, i32* %3, align 4
  br label %81

23:                                               ; preds = %13
  %24 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %30 = load %struct.urb*, %struct.urb** %6, align 8
  %31 = call i32 @submit_or_queue_tx_urb(%struct.hci_dev* %29, %struct.urb* %30)
  store i32 %31, i32* %3, align 4
  br label %81

32:                                               ; preds = %2
  %33 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call %struct.urb* @alloc_bulk_urb(%struct.hci_dev* %33, %struct.sk_buff* %34)
  store %struct.urb* %35, %struct.urb** %6, align 8
  %36 = load %struct.urb*, %struct.urb** %6, align 8
  %37 = call i32 @IS_ERR(%struct.urb* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.urb*, %struct.urb** %6, align 8
  %41 = call i32 @PTR_ERR(%struct.urb* %40)
  store i32 %41, i32* %3, align 4
  br label %81

42:                                               ; preds = %32
  %43 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %49 = load %struct.urb*, %struct.urb** %6, align 8
  %50 = call i32 @submit_or_queue_tx_urb(%struct.hci_dev* %48, %struct.urb* %49)
  store i32 %50, i32* %3, align 4
  br label %81

51:                                               ; preds = %2
  %52 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %53 = load i32, i32* @SCO_LINK, align 4
  %54 = call i32 @hci_conn_num(%struct.hci_dev* %52, i32 %53)
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %81

59:                                               ; preds = %51
  %60 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call %struct.urb* @alloc_isoc_urb(%struct.hci_dev* %60, %struct.sk_buff* %61)
  store %struct.urb* %62, %struct.urb** %6, align 8
  %63 = load %struct.urb*, %struct.urb** %6, align 8
  %64 = call i32 @IS_ERR(%struct.urb* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.urb*, %struct.urb** %6, align 8
  %68 = call i32 @PTR_ERR(%struct.urb* %67)
  store i32 %68, i32* %3, align 4
  br label %81

69:                                               ; preds = %59
  %70 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %71 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %76 = load %struct.urb*, %struct.urb** %6, align 8
  %77 = call i32 @submit_tx_urb(%struct.hci_dev* %75, %struct.urb* %76)
  store i32 %77, i32* %3, align 4
  br label %81

78:                                               ; preds = %2
  %79 = load i32, i32* @EILSEQ, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %69, %66, %56, %42, %39, %23, %20
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_skb_pkt_type(%struct.sk_buff*) #1

declare dso_local %struct.urb* @alloc_ctrl_urb(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @IS_ERR(%struct.urb*) #1

declare dso_local i32 @PTR_ERR(%struct.urb*) #1

declare dso_local i32 @submit_or_queue_tx_urb(%struct.hci_dev*, %struct.urb*) #1

declare dso_local %struct.urb* @alloc_bulk_urb(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_conn_num(%struct.hci_dev*, i32) #1

declare dso_local %struct.urb* @alloc_isoc_urb(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @submit_tx_urb(%struct.hci_dev*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
