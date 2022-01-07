; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_remove_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_remove_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btmrvl_remove_card(%struct.btmrvl_private* %0) #0 {
  %2 = alloca %struct.btmrvl_private*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  store %struct.btmrvl_private* %0, %struct.btmrvl_private** %2, align 8
  %4 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %5 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  store %struct.hci_dev* %7, %struct.hci_dev** %3, align 8
  %8 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %9 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = call i32 @wake_up_interruptible(i32* %11)
  %13 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %14 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = call i32 @wake_up_interruptible(i32* %16)
  %18 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %19 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @kthread_stop(i32 %21)
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = call i32 @hci_unregister_dev(%struct.hci_dev* %23)
  %25 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %26 = call i32 @hci_free_dev(%struct.hci_dev* %25)
  %27 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %28 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store %struct.hci_dev* null, %struct.hci_dev** %29, align 8
  %30 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %31 = call i32 @btmrvl_free_adapter(%struct.btmrvl_private* %30)
  %32 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %33 = call i32 @kfree(%struct.btmrvl_private* %32)
  ret i32 0
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @hci_unregister_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

declare dso_local i32 @btmrvl_free_adapter(%struct.btmrvl_private*) #1

declare dso_local i32 @kfree(%struct.btmrvl_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
