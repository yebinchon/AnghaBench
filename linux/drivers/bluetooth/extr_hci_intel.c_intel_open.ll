; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_intel.c_intel_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_intel.c_intel_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.intel_data* }
%struct.intel_data = type { i32, %struct.hci_uart*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"hu %p\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@intel_busy_work = common dso_local global i32 0, align 4
@STATE_BOOTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @intel_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_open(%struct.hci_uart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.intel_data*, align 8
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
  br label %44

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.intel_data* @kzalloc(i32 24, i32 %14)
  store %struct.intel_data* %15, %struct.intel_data** %4, align 8
  %16 = load %struct.intel_data*, %struct.intel_data** %4, align 8
  %17 = icmp ne %struct.intel_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %44

21:                                               ; preds = %13
  %22 = load %struct.intel_data*, %struct.intel_data** %4, align 8
  %23 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %22, i32 0, i32 3
  %24 = call i32 @skb_queue_head_init(i32* %23)
  %25 = load %struct.intel_data*, %struct.intel_data** %4, align 8
  %26 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %25, i32 0, i32 2
  %27 = load i32, i32* @intel_busy_work, align 4
  %28 = call i32 @INIT_WORK(i32* %26, i32 %27)
  %29 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %30 = load %struct.intel_data*, %struct.intel_data** %4, align 8
  %31 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %30, i32 0, i32 1
  store %struct.hci_uart* %29, %struct.hci_uart** %31, align 8
  %32 = load %struct.intel_data*, %struct.intel_data** %4, align 8
  %33 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %34 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %33, i32 0, i32 0
  store %struct.intel_data* %32, %struct.intel_data** %34, align 8
  %35 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %36 = call i32 @intel_set_power(%struct.hci_uart* %35, i32 1)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %21
  %39 = load i32, i32* @STATE_BOOTING, align 4
  %40 = load %struct.intel_data*, %struct.intel_data** %4, align 8
  %41 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %40, i32 0, i32 0
  %42 = call i32 @set_bit(i32 %39, i32* %41)
  br label %43

43:                                               ; preds = %38, %21
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %18, %10
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*) #1

declare dso_local i32 @hci_uart_has_flow_control(%struct.hci_uart*) #1

declare dso_local %struct.intel_data* @kzalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @intel_set_power(%struct.hci_uart*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
