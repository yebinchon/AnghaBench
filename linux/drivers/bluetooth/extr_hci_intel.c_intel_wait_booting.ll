; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_intel.c_intel_wait_booting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_intel.c_intel_wait_booting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i32, %struct.intel_data* }
%struct.intel_data = type { i32 }

@STATE_BOOTING = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Device boot interrupted\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Device boot timeout\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @intel_wait_booting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_wait_booting(%struct.hci_uart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.intel_data*, align 8
  %5 = alloca i32, align 4
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %6 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %7 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %6, i32 0, i32 1
  %8 = load %struct.intel_data*, %struct.intel_data** %7, align 8
  store %struct.intel_data* %8, %struct.intel_data** %4, align 8
  %9 = load %struct.intel_data*, %struct.intel_data** %4, align 8
  %10 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %9, i32 0, i32 0
  %11 = load i32, i32* @STATE_BOOTING, align 4
  %12 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %13 = call i32 @msecs_to_jiffies(i32 1000)
  %14 = call i32 @wait_on_bit_timeout(i32* %10, i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @EINTR, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %21 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @bt_dev_err(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINTR, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %38

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %31 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @bt_dev_err(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @ETIMEDOUT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %29, %19
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @wait_on_bit_timeout(i32*, i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @bt_dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
