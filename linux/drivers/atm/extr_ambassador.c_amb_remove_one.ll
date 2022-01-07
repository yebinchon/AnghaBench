; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_amb_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_ambassador.c_amb_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.amb_dev = type { i32, i32, i32 }

@DBG_INFO = common dso_local global i32 0, align 4
@DBG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"closing %p (atm_dev = %p)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @amb_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amb_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.amb_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.amb_dev* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.amb_dev* %5, %struct.amb_dev** %3, align 8
  %6 = load i32, i32* @DBG_INFO, align 4
  %7 = load i32, i32* @DBG_INIT, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.amb_dev*, %struct.amb_dev** %3, align 8
  %10 = load %struct.amb_dev*, %struct.amb_dev** %3, align 8
  %11 = getelementptr inbounds %struct.amb_dev, %struct.amb_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @PRINTD(i32 %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.amb_dev* %9, i32 %12)
  %14 = load %struct.amb_dev*, %struct.amb_dev** %3, align 8
  %15 = getelementptr inbounds %struct.amb_dev, %struct.amb_dev* %14, i32 0, i32 2
  %16 = call i32 @del_timer_sync(i32* %15)
  %17 = load %struct.amb_dev*, %struct.amb_dev** %3, align 8
  %18 = call i32 @drain_rx_pools(%struct.amb_dev* %17)
  %19 = load %struct.amb_dev*, %struct.amb_dev** %3, align 8
  %20 = call i32 @interrupts_off(%struct.amb_dev* %19)
  %21 = load %struct.amb_dev*, %struct.amb_dev** %3, align 8
  %22 = call i32 @amb_reset(%struct.amb_dev* %21, i32 0)
  %23 = load %struct.amb_dev*, %struct.amb_dev** %3, align 8
  %24 = getelementptr inbounds %struct.amb_dev, %struct.amb_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.amb_dev*, %struct.amb_dev** %3, align 8
  %27 = call i32 @free_irq(i32 %25, %struct.amb_dev* %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = call i32 @pci_disable_device(%struct.pci_dev* %28)
  %30 = load %struct.amb_dev*, %struct.amb_dev** %3, align 8
  %31 = call i32 @destroy_queues(%struct.amb_dev* %30)
  %32 = load %struct.amb_dev*, %struct.amb_dev** %3, align 8
  %33 = getelementptr inbounds %struct.amb_dev, %struct.amb_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @atm_dev_deregister(i32 %34)
  %36 = load %struct.amb_dev*, %struct.amb_dev** %3, align 8
  %37 = call i32 @kfree(%struct.amb_dev* %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %39 = call i32 @pci_release_region(%struct.pci_dev* %38, i32 1)
  ret void
}

declare dso_local %struct.amb_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @PRINTD(i32, i8*, %struct.amb_dev*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @drain_rx_pools(%struct.amb_dev*) #1

declare dso_local i32 @interrupts_off(%struct.amb_dev*) #1

declare dso_local i32 @amb_reset(%struct.amb_dev*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.amb_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @destroy_queues(%struct.amb_dev*) #1

declare dso_local i32 @atm_dev_deregister(i32) #1

declare dso_local i32 @kfree(%struct.amb_dev*) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
