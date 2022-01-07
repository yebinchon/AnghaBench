; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btsdio.c_btsdio_send_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btsdio.c_btsdio_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.btsdio_data = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.sk_buff*)* @btsdio_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btsdio_send_frame(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.btsdio_data*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %8 = call %struct.btsdio_data* @hci_get_drvdata(%struct.hci_dev* %7)
  store %struct.btsdio_data* %8, %struct.btsdio_data** %6, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %13)
  switch i32 %14, label %33 [
    i32 129, label %15
    i32 130, label %21
    i32 128, label %27
  ]

15:                                               ; preds = %2
  %16 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %36

21:                                               ; preds = %2
  %22 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %36

27:                                               ; preds = %2
  %28 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EILSEQ, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %44

36:                                               ; preds = %27, %21, %15
  %37 = load %struct.btsdio_data*, %struct.btsdio_data** %6, align 8
  %38 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %37, i32 0, i32 1
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @skb_queue_tail(i32* %38, %struct.sk_buff* %39)
  %41 = load %struct.btsdio_data*, %struct.btsdio_data** %6, align 8
  %42 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %41, i32 0, i32 0
  %43 = call i32 @schedule_work(i32* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %36, %33
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.btsdio_data* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_skb_pkt_type(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
