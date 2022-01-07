; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtksdio.c_btmtksdio_send_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtksdio.c_btmtksdio_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.btmtksdio_dev = type { i32, i32 }

@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.sk_buff*)* @btmtksdio_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmtksdio_send_frame(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.btmtksdio_dev*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %8 = call %struct.btmtksdio_dev* @hci_get_drvdata(%struct.hci_dev* %7)
  store %struct.btmtksdio_dev* %8, %struct.btmtksdio_dev** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %9)
  switch i32 %10, label %29 [
    i32 129, label %11
    i32 130, label %17
    i32 128, label %23
  ]

11:                                               ; preds = %2
  %12 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %32

23:                                               ; preds = %2
  %24 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EILSEQ, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %40

32:                                               ; preds = %23, %17, %11
  %33 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %34 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %33, i32 0, i32 1
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call i32 @skb_queue_tail(i32* %34, %struct.sk_buff* %35)
  %37 = load %struct.btmtksdio_dev*, %struct.btmtksdio_dev** %6, align 8
  %38 = getelementptr inbounds %struct.btmtksdio_dev, %struct.btmtksdio_dev* %37, i32 0, i32 0
  %39 = call i32 @schedule_work(i32* %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %32, %29
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.btmtksdio_dev* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @hci_skb_pkt_type(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
