; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_check_evtpkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_check_evtpkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_event_hdr = type { i64 }
%struct.hci_ev_cmd_complete = type { i32 }

@HCI_EV_CMD_COMPLETE = common dso_local global i64 0, align 8
@HCI_EVENT_HDR_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"vendor event skipped: opcode=%#4.4x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btmrvl_check_evtpkt(%struct.btmrvl_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btmrvl_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.hci_event_hdr*, align 8
  %7 = alloca %struct.hci_ev_cmd_complete*, align 8
  %8 = alloca i32, align 4
  store %struct.btmrvl_private* %0, %struct.btmrvl_private** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.hci_event_hdr*
  store %struct.hci_event_hdr* %13, %struct.hci_event_hdr** %6, align 8
  %14 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %6, align 8
  %15 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HCI_EV_CMD_COMPLETE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %59

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HCI_EVENT_HDR_SIZE, align 8
  %24 = add nsw i64 %22, %23
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.hci_ev_cmd_complete*
  store %struct.hci_ev_cmd_complete* %26, %struct.hci_ev_cmd_complete** %7, align 8
  %27 = load %struct.hci_ev_cmd_complete*, %struct.hci_ev_cmd_complete** %7, align 8
  %28 = getelementptr inbounds %struct.hci_ev_cmd_complete, %struct.hci_ev_cmd_complete* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__le16_to_cpu(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %32 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %19
  %37 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %38 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %41 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.btmrvl_private*, %struct.btmrvl_private** %4, align 8
  %45 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = call i32 @wake_up_interruptible(i32* %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @hci_opcode_ogf(i32 %49)
  %51 = icmp eq i32 %50, 63
  br i1 %51, label %52, label %57

52:                                               ; preds = %36
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @BT_DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = call i32 @kfree_skb(%struct.sk_buff* %55)
  store i32 0, i32* %3, align 4
  br label %60

57:                                               ; preds = %36
  br label %58

58:                                               ; preds = %57, %19
  br label %59

59:                                               ; preds = %58, %2
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %52
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @hci_opcode_ogf(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
