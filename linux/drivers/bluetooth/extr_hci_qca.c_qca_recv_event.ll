; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_recv_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_recv_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_uart = type { %struct.qca_data* }
%struct.qca_data = type { i32, i32 }
%struct.hci_event_hdr = type { i64 }

@QCA_DROP_VENDOR_EVENT = common dso_local global i32 0, align 4
@HCI_EV_VENDOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.sk_buff*)* @qca_recv_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca_recv_event(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.hci_uart*, align 8
  %7 = alloca %struct.qca_data*, align 8
  %8 = alloca %struct.hci_event_hdr*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %10 = call %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev* %9)
  store %struct.hci_uart* %10, %struct.hci_uart** %6, align 8
  %11 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %12 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %11, i32 0, i32 0
  %13 = load %struct.qca_data*, %struct.qca_data** %12, align 8
  store %struct.qca_data* %13, %struct.qca_data** %7, align 8
  %14 = load i32, i32* @QCA_DROP_VENDOR_EVENT, align 4
  %15 = load %struct.qca_data*, %struct.qca_data** %7, align 8
  %16 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %15, i32 0, i32 1
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.hci_event_hdr*
  store %struct.hci_event_hdr* %24, %struct.hci_event_hdr** %8, align 8
  %25 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %8, align 8
  %26 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HCI_EV_VENDOR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load %struct.qca_data*, %struct.qca_data** %7, align 8
  %32 = getelementptr inbounds %struct.qca_data, %struct.qca_data* %31, i32 0, i32 0
  %33 = call i32 @complete(i32* %32)
  br label %34

34:                                               ; preds = %30, %19
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call i32 @kfree_skb(%struct.sk_buff* %35)
  store i32 0, i32* %3, align 4
  br label %41

37:                                               ; preds = %2
  %38 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @hci_recv_frame(%struct.hci_dev* %38, %struct.sk_buff* %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @hci_recv_frame(%struct.hci_dev*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
