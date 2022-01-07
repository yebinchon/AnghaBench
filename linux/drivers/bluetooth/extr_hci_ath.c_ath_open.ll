; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ath.c_ath_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ath.c_ath_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.ath_struct* }
%struct.ath_struct = type { i32, %struct.hci_uart*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"hu %p\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ath_hci_uart_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @ath_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_open(%struct.hci_uart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.ath_struct*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %5 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %6 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %5)
  %7 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %8 = call i32 @hci_uart_has_flow_control(%struct.hci_uart* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EOPNOTSUPP, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %35

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ath_struct* @kzalloc(i32 24, i32 %14)
  store %struct.ath_struct* %15, %struct.ath_struct** %4, align 8
  %16 = load %struct.ath_struct*, %struct.ath_struct** %4, align 8
  %17 = icmp ne %struct.ath_struct* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %35

21:                                               ; preds = %13
  %22 = load %struct.ath_struct*, %struct.ath_struct** %4, align 8
  %23 = getelementptr inbounds %struct.ath_struct, %struct.ath_struct* %22, i32 0, i32 2
  %24 = call i32 @skb_queue_head_init(i32* %23)
  %25 = load %struct.ath_struct*, %struct.ath_struct** %4, align 8
  %26 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %27 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %26, i32 0, i32 0
  store %struct.ath_struct* %25, %struct.ath_struct** %27, align 8
  %28 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %29 = load %struct.ath_struct*, %struct.ath_struct** %4, align 8
  %30 = getelementptr inbounds %struct.ath_struct, %struct.ath_struct* %29, i32 0, i32 1
  store %struct.hci_uart* %28, %struct.hci_uart** %30, align 8
  %31 = load %struct.ath_struct*, %struct.ath_struct** %4, align 8
  %32 = getelementptr inbounds %struct.ath_struct, %struct.ath_struct* %31, i32 0, i32 0
  %33 = load i32, i32* @ath_hci_uart_work, align 4
  %34 = call i32 @INIT_WORK(i32* %32, i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %21, %18, %10
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*) #1

declare dso_local i32 @hci_uart_has_flow_control(%struct.hci_uart*) #1

declare dso_local %struct.ath_struct* @kzalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
