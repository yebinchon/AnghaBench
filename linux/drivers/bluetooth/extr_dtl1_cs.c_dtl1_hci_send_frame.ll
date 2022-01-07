; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_dtl1_cs.c_dtl1_hci_send_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_dtl1_cs.c_dtl1_hci_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.dtl1_info = type { i32 }
%struct.nsh = type { i32, i32, i64 }

@EILSEQ = common dso_local global i32 0, align 4
@NSHL = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.sk_buff*)* @dtl1_hci_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtl1_hci_send_frame(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.dtl1_info*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nsh, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %10 = call %struct.dtl1_info* @hci_get_drvdata(%struct.hci_dev* %9)
  store %struct.dtl1_info* %10, %struct.dtl1_info** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i32 @hci_skb_pkt_type(%struct.sk_buff* %11)
  switch i32 %12, label %34 [
    i32 129, label %13
    i32 130, label %20
    i32 128, label %27
  ]

13:                                               ; preds = %2
  %14 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = getelementptr inbounds %struct.nsh, %struct.nsh* %8, i32 0, i32 0
  store i32 129, i32* %19, align 8
  br label %37

20:                                               ; preds = %2
  %21 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = getelementptr inbounds %struct.nsh, %struct.nsh* %8, i32 0, i32 0
  store i32 130, i32* %26, align 8
  br label %37

27:                                               ; preds = %2
  %28 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = getelementptr inbounds %struct.nsh, %struct.nsh* %8, i32 0, i32 0
  store i32 131, i32* %33, align 8
  br label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @EILSEQ, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %93

37:                                               ; preds = %27, %20, %13
  %38 = getelementptr inbounds %struct.nsh, %struct.nsh* %8, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.nsh, %struct.nsh* %8, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load i64, i64* @NSHL, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %43, %47
  %49 = add nsw i64 %48, 1
  %50 = load i32, i32* @GFP_ATOMIC, align 4
  %51 = call %struct.sk_buff* @bt_skb_alloc(i64 %49, i32 %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %7, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = icmp ne %struct.sk_buff* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %37
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %93

57:                                               ; preds = %37
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = load i64, i64* @NSHL, align 8
  %60 = call i32 @skb_reserve(%struct.sk_buff* %58, i64 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @skb_put(%struct.sk_buff* %62, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %61, i32 %66, i32 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %57
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = call i32 @skb_put_u8(%struct.sk_buff* %77, i32 0)
  br label %79

79:                                               ; preds = %76, %57
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = load i64, i64* @NSHL, align 8
  %82 = call i32 @skb_push(%struct.sk_buff* %80, i64 %81)
  %83 = load i64, i64* @NSHL, align 8
  %84 = call i32 @memcpy(i32 %82, %struct.nsh* %8, i64 %83)
  %85 = load %struct.dtl1_info*, %struct.dtl1_info** %6, align 8
  %86 = getelementptr inbounds %struct.dtl1_info, %struct.dtl1_info* %85, i32 0, i32 0
  %87 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %88 = call i32 @skb_queue_tail(i32* %86, %struct.sk_buff* %87)
  %89 = load %struct.dtl1_info*, %struct.dtl1_info** %6, align 8
  %90 = call i32 @dtl1_write_wakeup(%struct.dtl1_info* %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = call i32 @kfree_skb(%struct.sk_buff* %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %79, %54, %34
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.dtl1_info* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @hci_skb_pkt_type(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @bt_skb_alloc(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.nsh*, i64) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @dtl1_write_wakeup(%struct.dtl1_info*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
