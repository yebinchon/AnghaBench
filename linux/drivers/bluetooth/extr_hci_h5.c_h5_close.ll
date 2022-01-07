; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_h5.c_h5_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i32, %struct.h5* }
%struct.h5 = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.h5*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @h5_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h5_close(%struct.hci_uart* %0) #0 {
  %2 = alloca %struct.hci_uart*, align 8
  %3 = alloca %struct.h5*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %2, align 8
  %4 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %5 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %4, i32 0, i32 1
  %6 = load %struct.h5*, %struct.h5** %5, align 8
  store %struct.h5* %6, %struct.h5** %3, align 8
  %7 = load %struct.h5*, %struct.h5** %3, align 8
  %8 = getelementptr inbounds %struct.h5, %struct.h5* %7, i32 0, i32 4
  %9 = call i32 @del_timer_sync(i32* %8)
  %10 = load %struct.h5*, %struct.h5** %3, align 8
  %11 = getelementptr inbounds %struct.h5, %struct.h5* %10, i32 0, i32 3
  %12 = call i32 @skb_queue_purge(i32* %11)
  %13 = load %struct.h5*, %struct.h5** %3, align 8
  %14 = getelementptr inbounds %struct.h5, %struct.h5* %13, i32 0, i32 2
  %15 = call i32 @skb_queue_purge(i32* %14)
  %16 = load %struct.h5*, %struct.h5** %3, align 8
  %17 = getelementptr inbounds %struct.h5, %struct.h5* %16, i32 0, i32 1
  %18 = call i32 @skb_queue_purge(i32* %17)
  %19 = load %struct.h5*, %struct.h5** %3, align 8
  %20 = getelementptr inbounds %struct.h5, %struct.h5* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %1
  %24 = load %struct.h5*, %struct.h5** %3, align 8
  %25 = getelementptr inbounds %struct.h5, %struct.h5* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.h5*)*, i32 (%struct.h5*)** %27, align 8
  %29 = icmp ne i32 (%struct.h5*)* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load %struct.h5*, %struct.h5** %3, align 8
  %32 = getelementptr inbounds %struct.h5, %struct.h5* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.h5*)*, i32 (%struct.h5*)** %34, align 8
  %36 = load %struct.h5*, %struct.h5** %3, align 8
  %37 = call i32 %35(%struct.h5* %36)
  br label %38

38:                                               ; preds = %30, %23, %1
  %39 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %40 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load %struct.h5*, %struct.h5** %3, align 8
  %45 = call i32 @kfree(%struct.h5* %44)
  br label %46

46:                                               ; preds = %43, %38
  ret i32 0
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @kfree(%struct.h5*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
