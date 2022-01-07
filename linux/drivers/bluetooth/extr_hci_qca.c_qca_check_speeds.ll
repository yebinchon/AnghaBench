; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_check_speeds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_check_speeds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i32 }

@QCA_INIT_SPEED = common dso_local global i32 0, align 4
@QCA_OPER_SPEED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @qca_check_speeds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca_check_speeds(%struct.hci_uart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_uart*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %4 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %5 = call i32 @qca_soc_type(%struct.hci_uart* %4)
  %6 = call i64 @qca_is_wcn399x(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %10 = load i32, i32* @QCA_INIT_SPEED, align 4
  %11 = call i32 @qca_get_speed(%struct.hci_uart* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %8
  %14 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %15 = load i32, i32* @QCA_OPER_SPEED, align 4
  %16 = call i32 @qca_get_speed(%struct.hci_uart* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %37

21:                                               ; preds = %13, %8
  br label %36

22:                                               ; preds = %1
  %23 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %24 = load i32, i32* @QCA_INIT_SPEED, align 4
  %25 = call i32 @qca_get_speed(%struct.hci_uart* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %29 = load i32, i32* @QCA_OPER_SPEED, align 4
  %30 = call i32 @qca_get_speed(%struct.hci_uart* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %37

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %21
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %32, %18
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @qca_is_wcn399x(i32) #1

declare dso_local i32 @qca_soc_type(%struct.hci_uart*) #1

declare dso_local i32 @qca_get_speed(%struct.hci_uart*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
