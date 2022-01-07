; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bfusb.c_bfusb_rx_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bfusb.c_bfusb_rx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfusb_data = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.urb = type { i32 }
%struct.bfusb_data_scb = type { %struct.urb* }
%struct.sk_buff = type { i32, i64, i8* }

@HCI_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bfusb %p urb %p\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bfusb_rx_complete = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s bulk rx submit failed urb %p err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfusb_data*, %struct.urb*)* @bfusb_rx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfusb_rx_submit(%struct.bfusb_data* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfusb_data*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.bfusb_data_scb*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bfusb_data* %0, %struct.bfusb_data** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %11 = load i32, i32* @HCI_MAX_FRAME_SIZE, align 4
  %12 = add nsw i32 %11, 32
  store i32 %12, i32* %10, align 4
  %13 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %14 = load %struct.urb*, %struct.urb** %5, align 8
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.bfusb_data* %13, %struct.urb* %14)
  %16 = load %struct.urb*, %struct.urb** %5, align 8
  %17 = icmp ne %struct.urb* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %19)
  store %struct.urb* %20, %struct.urb** %5, align 8
  %21 = load %struct.urb*, %struct.urb** %5, align 8
  %22 = icmp ne %struct.urb* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %97

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call %struct.sk_buff* @bt_skb_alloc(i32 %28, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %7, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load %struct.urb*, %struct.urb** %5, align 8
  %35 = call i32 @usb_free_urb(%struct.urb* %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %97

38:                                               ; preds = %27
  %39 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %40 = bitcast %struct.bfusb_data* %39 to i8*
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.bfusb_data_scb*
  store %struct.bfusb_data_scb* %46, %struct.bfusb_data_scb** %6, align 8
  %47 = load %struct.urb*, %struct.urb** %5, align 8
  %48 = load %struct.bfusb_data_scb*, %struct.bfusb_data_scb** %6, align 8
  %49 = getelementptr inbounds %struct.bfusb_data_scb, %struct.bfusb_data_scb* %48, i32 0, i32 0
  store %struct.urb* %47, %struct.urb** %49, align 8
  %50 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %51 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %54 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @usb_rcvbulkpipe(i32 %52, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.urb*, %struct.urb** %5, align 8
  %58 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %59 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @bfusb_rx_complete, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = call i32 @usb_fill_bulk_urb(%struct.urb* %57, i32 %60, i32 %61, i32 %64, i32 %65, i32 %66, %struct.sk_buff* %67)
  %69 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %70 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %69, i32 0, i32 0
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = call i32 @skb_queue_tail(i32* %70, %struct.sk_buff* %71)
  %73 = load %struct.urb*, %struct.urb** %5, align 8
  %74 = load i32, i32* @GFP_ATOMIC, align 4
  %75 = call i32 @usb_submit_urb(%struct.urb* %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %38
  %79 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %80 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.urb*, %struct.urb** %5, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @BT_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %83, %struct.urb* %84, i32 %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %88 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %89 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %88, i32 0, i32 0
  %90 = call i32 @skb_unlink(%struct.sk_buff* %87, i32* %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = call i32 @kfree_skb(%struct.sk_buff* %91)
  %93 = load %struct.urb*, %struct.urb** %5, align 8
  %94 = call i32 @usb_free_urb(%struct.urb* %93)
  br label %95

95:                                               ; preds = %78, %38
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %33, %23
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @BT_DBG(i8*, %struct.bfusb_data*, %struct.urb*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32, %struct.urb*, i32) #1

declare dso_local i32 @skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
