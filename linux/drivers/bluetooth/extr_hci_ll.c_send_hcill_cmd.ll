; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ll.c_send_hcill_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ll.c_send_hcill_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.ll_struct* }
%struct.ll_struct = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"hu %p cmd 0x%x\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"cannot allocate memory for HCILL packet\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.hci_uart*)* @send_hcill_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_hcill_cmd(i32 %0, %struct.hci_uart* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_uart*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ll_struct*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.hci_uart* %1, %struct.hci_uart** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %8 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %9 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %8, i32 0, i32 0
  %10 = load %struct.ll_struct*, %struct.ll_struct** %9, align 8
  store %struct.ll_struct* %10, %struct.ll_struct** %7, align 8
  %11 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %11, i32 %12)
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.sk_buff* @bt_skb_alloc(i32 1, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = call i32 @BT_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %30

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @skb_put_u8(%struct.sk_buff* %23, i32 %24)
  %26 = load %struct.ll_struct*, %struct.ll_struct** %7, align 8
  %27 = getelementptr inbounds %struct.ll_struct, %struct.ll_struct* %26, i32 0, i32 0
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call i32 @skb_queue_tail(i32* %27, %struct.sk_buff* %28)
  br label %30

30:                                               ; preds = %22, %18
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*, i32) #1

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
