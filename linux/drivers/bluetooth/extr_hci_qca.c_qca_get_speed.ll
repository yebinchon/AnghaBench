; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_get_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_get_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@QCA_INIT_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*, i32)* @qca_get_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca_get_speed(%struct.hci_uart* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @QCA_INIT_SPEED, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %11 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %16 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  br label %32

18:                                               ; preds = %9
  %19 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %20 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %27 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %25, %18
  br label %32

32:                                               ; preds = %31, %14
  br label %57

33:                                               ; preds = %2
  %34 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %35 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %40 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %5, align 4
  br label %56

42:                                               ; preds = %33
  %43 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %44 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %51 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %49, %42
  br label %56

56:                                               ; preds = %55, %38
  br label %57

57:                                               ; preds = %56, %32
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
