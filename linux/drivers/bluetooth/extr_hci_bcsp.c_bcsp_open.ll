; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcsp.c_bcsp_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_bcsp.c_bcsp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.bcsp_struct* }
%struct.bcsp_struct = type { i32, i32, i32, i32, i32, i32, %struct.hci_uart* }

@.str = private unnamed_addr constant [6 x i8] c"hu %p\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bcsp_timed_event = common dso_local global i32 0, align 4
@BCSP_W4_PKT_DELIMITER = common dso_local global i32 0, align 4
@txcrc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @bcsp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcsp_open(%struct.hci_uart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.bcsp_struct*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %5 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %6 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %5)
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.bcsp_struct* @kzalloc(i32 32, i32 %7)
  store %struct.bcsp_struct* %8, %struct.bcsp_struct** %4, align 8
  %9 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %10 = icmp ne %struct.bcsp_struct* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %16 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %17 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %16, i32 0, i32 0
  store %struct.bcsp_struct* %15, %struct.bcsp_struct** %17, align 8
  %18 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %19 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %20 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %19, i32 0, i32 6
  store %struct.hci_uart* %18, %struct.hci_uart** %20, align 8
  %21 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %22 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %21, i32 0, i32 5
  %23 = call i32 @skb_queue_head_init(i32* %22)
  %24 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %25 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %24, i32 0, i32 4
  %26 = call i32 @skb_queue_head_init(i32* %25)
  %27 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %28 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %27, i32 0, i32 3
  %29 = call i32 @skb_queue_head_init(i32* %28)
  %30 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %31 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %30, i32 0, i32 2
  %32 = load i32, i32* @bcsp_timed_event, align 4
  %33 = call i32 @timer_setup(i32* %31, i32 %32, i32 0)
  %34 = load i32, i32* @BCSP_W4_PKT_DELIMITER, align 4
  %35 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %36 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i64, i64* @txcrc, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %14
  %40 = load %struct.bcsp_struct*, %struct.bcsp_struct** %4, align 8
  %41 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %14
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %11
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*) #1

declare dso_local %struct.bcsp_struct* @kzalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
