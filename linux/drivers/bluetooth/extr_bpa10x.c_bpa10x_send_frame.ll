; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bpa10x.c_bpa10x_send_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_bpa10x.c_bpa10x_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32, i32, i8* }
%struct.bpa10x_data = type { i32, i32 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }
%struct.urb = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@bpa10x_tx_complete = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"urb %p submission failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.sk_buff*)* @bpa10x_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpa10x_send_frame(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.bpa10x_data*, align 8
  %7 = alloca %struct.usb_ctrlrequest*, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %12 = call %struct.bpa10x_data* @hci_get_drvdata(%struct.hci_dev* %11)
  store %struct.bpa10x_data* %12, %struct.bpa10x_data** %6, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %18 = bitcast %struct.hci_dev* %17 to i8*
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %21)
  store %struct.urb* %22, %struct.urb** %8, align 8
  %23 = load %struct.urb*, %struct.urb** %8, align 8
  %24 = icmp ne %struct.urb* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %164

28:                                               ; preds = %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i64 @skb_push(%struct.sk_buff* %31, i32 1)
  %33 = inttoptr i64 %32 to i32*
  store i32 %30, i32* %33, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %34)
  switch i32 %35, label %135 [
    i32 129, label %36
    i32 130, label %87
    i32 128, label %111
  ]

36:                                               ; preds = %28
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.usb_ctrlrequest* @kmalloc(i32 20, i32 %37)
  store %struct.usb_ctrlrequest* %38, %struct.usb_ctrlrequest** %7, align 8
  %39 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %40 = icmp ne %struct.usb_ctrlrequest* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.urb*, %struct.urb** %8, align 8
  %43 = call i32 @usb_free_urb(%struct.urb* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %164

46:                                               ; preds = %36
  %47 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %48 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %49 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %51 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %50, i32 0, i32 3
  store i32 0, i32* %51, align 4
  %52 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %53 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %52, i32 0, i32 2
  store i32 0, i32* %53, align 4
  %54 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %55 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @__cpu_to_le16(i32 %58)
  %60 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %61 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.bpa10x_data*, %struct.bpa10x_data** %6, align 8
  %63 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @usb_sndctrlpipe(i32 %64, i32 0)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.urb*, %struct.urb** %8, align 8
  %67 = load %struct.bpa10x_data*, %struct.bpa10x_data** %6, align 8
  %68 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %7, align 8
  %72 = bitcast %struct.usb_ctrlrequest* %71 to i8*
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @bpa10x_tx_complete, align 4
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = call i32 @usb_fill_control_urb(%struct.urb* %66, i32 %69, i32 %70, i8* %72, i32 %75, i32 %78, i32 %79, %struct.sk_buff* %80)
  %82 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %83 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %140

87:                                               ; preds = %28
  %88 = load %struct.bpa10x_data*, %struct.bpa10x_data** %6, align 8
  %89 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @usb_sndbulkpipe(i32 %90, i32 2)
  store i32 %91, i32* %9, align 4
  %92 = load %struct.urb*, %struct.urb** %8, align 8
  %93 = load %struct.bpa10x_data*, %struct.bpa10x_data** %6, align 8
  %94 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @bpa10x_tx_complete, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = call i32 @usb_fill_bulk_urb(%struct.urb* %92, i32 %95, i32 %96, i32 %99, i32 %102, i32 %103, %struct.sk_buff* %104)
  %106 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %107 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %140

111:                                              ; preds = %28
  %112 = load %struct.bpa10x_data*, %struct.bpa10x_data** %6, align 8
  %113 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @usb_sndbulkpipe(i32 %114, i32 2)
  store i32 %115, i32* %9, align 4
  %116 = load %struct.urb*, %struct.urb** %8, align 8
  %117 = load %struct.bpa10x_data*, %struct.bpa10x_data** %6, align 8
  %118 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @bpa10x_tx_complete, align 4
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = call i32 @usb_fill_bulk_urb(%struct.urb* %116, i32 %119, i32 %120, i32 %123, i32 %126, i32 %127, %struct.sk_buff* %128)
  %130 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %131 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  br label %140

135:                                              ; preds = %28
  %136 = load %struct.urb*, %struct.urb** %8, align 8
  %137 = call i32 @usb_free_urb(%struct.urb* %136)
  %138 = load i32, i32* @EILSEQ, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %164

140:                                              ; preds = %111, %87, %46
  %141 = load %struct.urb*, %struct.urb** %8, align 8
  %142 = load %struct.bpa10x_data*, %struct.bpa10x_data** %6, align 8
  %143 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %142, i32 0, i32 0
  %144 = call i32 @usb_anchor_urb(%struct.urb* %141, i32* %143)
  %145 = load %struct.urb*, %struct.urb** %8, align 8
  %146 = load i32, i32* @GFP_KERNEL, align 4
  %147 = call i32 @usb_submit_urb(%struct.urb* %145, i32 %146)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %140
  %151 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %152 = load %struct.urb*, %struct.urb** %8, align 8
  %153 = call i32 @bt_dev_err(%struct.hci_dev* %151, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.urb* %152)
  %154 = load %struct.urb*, %struct.urb** %8, align 8
  %155 = getelementptr inbounds %struct.urb, %struct.urb* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @kfree(i32 %156)
  %158 = load %struct.urb*, %struct.urb** %8, align 8
  %159 = call i32 @usb_unanchor_urb(%struct.urb* %158)
  br label %160

160:                                              ; preds = %150, %140
  %161 = load %struct.urb*, %struct.urb** %8, align 8
  %162 = call i32 @usb_free_urb(%struct.urb* %161)
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %160, %135, %41, %25
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.bpa10x_data* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @hci_skb_pkt_type(%struct.sk_buff*) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.usb_ctrlrequest* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @__cpu_to_le16(i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_fill_control_urb(%struct.urb*, i32, i32, i8*, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, %struct.urb*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
