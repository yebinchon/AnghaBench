; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_driver.c_eeh_report_failure.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_driver.c_eeh_report_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeh_dev = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pci_driver = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.pci_dev*, i32)* }

@PCI_ERS_RESULT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Invoking %s->error_detected(permanent failure)\00", align 1
@pci_channel_io_perm_failure = common dso_local global i32 0, align 4
@PCI_ERS_RESULT_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeh_dev*, %struct.pci_dev*, %struct.pci_driver*)* @eeh_report_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeh_report_failure(%struct.eeh_dev* %0, %struct.pci_dev* %1, %struct.pci_driver* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eeh_dev*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pci_driver*, align 8
  %8 = alloca i32, align 4
  store %struct.eeh_dev* %0, %struct.eeh_dev** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store %struct.pci_driver* %2, %struct.pci_driver** %7, align 8
  %9 = load %struct.pci_driver*, %struct.pci_driver** %7, align 8
  %10 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*, i32)** %12, align 8
  %14 = icmp ne i32 (%struct.pci_dev*, i32)* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @PCI_ERS_RESULT_NONE, align 4
  store i32 %16, i32* %4, align 4
  br label %35

17:                                               ; preds = %3
  %18 = load %struct.eeh_dev*, %struct.eeh_dev** %5, align 8
  %19 = load %struct.pci_driver*, %struct.pci_driver** %7, align 8
  %20 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @eeh_edev_info(%struct.eeh_dev* %18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.pci_driver*, %struct.pci_driver** %7, align 8
  %24 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*, i32)** %26, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %29 = load i32, i32* @pci_channel_io_perm_failure, align 4
  %30 = call i32 %27(%struct.pci_dev* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %32 = load i32, i32* @PCI_ERS_RESULT_DISCONNECT, align 4
  %33 = call i32 @pci_uevent_ers(%struct.pci_dev* %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %17, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @eeh_edev_info(%struct.eeh_dev*, i8*, i32) #1

declare dso_local i32 @pci_uevent_ers(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
