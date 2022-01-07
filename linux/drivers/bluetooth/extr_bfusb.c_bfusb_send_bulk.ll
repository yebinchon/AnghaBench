; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bfusb.c_bfusb_send_bulk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bfusb.c_bfusb_send_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfusb_data = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, i32, i64 }
%struct.bfusb_data_scb = type { %struct.urb* }
%struct.urb = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"bfusb %p skb %p len %d\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bfusb_tx_complete = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s bulk tx submit failed urb %p err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfusb_data*, %struct.sk_buff*)* @bfusb_send_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfusb_send_bulk(%struct.bfusb_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfusb_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.bfusb_data_scb*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bfusb_data* %0, %struct.bfusb_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.bfusb_data_scb*
  store %struct.bfusb_data_scb* %14, %struct.bfusb_data_scb** %6, align 8
  %15 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %16 = call %struct.urb* @bfusb_get_completed(%struct.bfusb_data* %15)
  store %struct.urb* %16, %struct.urb** %7, align 8
  %17 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @BT_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.bfusb_data* %17, %struct.sk_buff* %18, i32 %21)
  %23 = load %struct.urb*, %struct.urb** %7, align 8
  %24 = icmp ne %struct.urb* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %26)
  store %struct.urb* %27, %struct.urb** %7, align 8
  %28 = load %struct.urb*, %struct.urb** %7, align 8
  %29 = icmp ne %struct.urb* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %89

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %36 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %39 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @usb_sndbulkpipe(i32 %37, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.urb*, %struct.urb** %7, align 8
  %43 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %44 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @bfusb_tx_complete, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = call i32 @usb_fill_bulk_urb(%struct.urb* %42, i32 %45, i32 %46, i32 %49, i32 %52, i32 %53, %struct.sk_buff* %54)
  %56 = load %struct.urb*, %struct.urb** %7, align 8
  %57 = load %struct.bfusb_data_scb*, %struct.bfusb_data_scb** %6, align 8
  %58 = getelementptr inbounds %struct.bfusb_data_scb, %struct.bfusb_data_scb* %57, i32 0, i32 0
  store %struct.urb* %56, %struct.urb** %58, align 8
  %59 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %60 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %59, i32 0, i32 1
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call i32 @skb_queue_tail(i32* %60, %struct.sk_buff* %61)
  %63 = load %struct.urb*, %struct.urb** %7, align 8
  %64 = load i32, i32* @GFP_ATOMIC, align 4
  %65 = call i32 @usb_submit_urb(%struct.urb* %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %34
  %69 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %70 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.urb*, %struct.urb** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @BT_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %73, %struct.urb* %74, i32 %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %79 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %78, i32 0, i32 1
  %80 = call i32 @skb_unlink(%struct.sk_buff* %77, i32* %79)
  %81 = load %struct.urb*, %struct.urb** %7, align 8
  %82 = call i32 @usb_free_urb(%struct.urb* %81)
  br label %87

83:                                               ; preds = %34
  %84 = load %struct.bfusb_data*, %struct.bfusb_data** %4, align 8
  %85 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %84, i32 0, i32 0
  %86 = call i32 @atomic_inc(i32* %85)
  br label %87

87:                                               ; preds = %83, %68
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %30
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.urb* @bfusb_get_completed(%struct.bfusb_data*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.bfusb_data*, %struct.sk_buff*, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32, %struct.urb*, i32) #1

declare dso_local i32 @skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
