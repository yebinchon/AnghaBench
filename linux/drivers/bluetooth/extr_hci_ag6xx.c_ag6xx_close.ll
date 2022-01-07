; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ag6xx.c_ag6xx_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ag6xx.c_ag6xx_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.ag6xx_data* }
%struct.ag6xx_data = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"hu %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @ag6xx_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag6xx_close(%struct.hci_uart* %0) #0 {
  %2 = alloca %struct.hci_uart*, align 8
  %3 = alloca %struct.ag6xx_data*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %2, align 8
  %4 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %5 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %4, i32 0, i32 0
  %6 = load %struct.ag6xx_data*, %struct.ag6xx_data** %5, align 8
  store %struct.ag6xx_data* %6, %struct.ag6xx_data** %3, align 8
  %7 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %7)
  %9 = load %struct.ag6xx_data*, %struct.ag6xx_data** %3, align 8
  %10 = getelementptr inbounds %struct.ag6xx_data, %struct.ag6xx_data* %9, i32 0, i32 1
  %11 = call i32 @skb_queue_purge(i32* %10)
  %12 = load %struct.ag6xx_data*, %struct.ag6xx_data** %3, align 8
  %13 = getelementptr inbounds %struct.ag6xx_data, %struct.ag6xx_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @kfree_skb(i32 %14)
  %16 = load %struct.ag6xx_data*, %struct.ag6xx_data** %3, align 8
  %17 = call i32 @kfree(%struct.ag6xx_data* %16)
  %18 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %19 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %18, i32 0, i32 0
  store %struct.ag6xx_data* null, %struct.ag6xx_data** %19, align 8
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @kfree(%struct.ag6xx_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
