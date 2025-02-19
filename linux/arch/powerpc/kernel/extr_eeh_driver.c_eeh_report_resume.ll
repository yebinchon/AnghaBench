; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_driver.c_eeh_report_resume.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_driver.c_eeh_report_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i64)* }
%struct.eeh_dev = type { i32, i32 }
%struct.pci_dev = type { i32 }
%struct.pci_driver = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.pci_dev*)* }

@PCI_ERS_RESULT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invoking %s->resume()\00", align 1
@PCI_ERS_RESULT_RECOVERED = common dso_local global i32 0, align 4
@eeh_ops = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeh_dev*, %struct.pci_dev*, %struct.pci_driver*)* @eeh_report_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeh_report_resume(%struct.eeh_dev* %0, %struct.pci_dev* %1, %struct.pci_driver* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eeh_dev*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.pci_driver*, align 8
  store %struct.eeh_dev* %0, %struct.eeh_dev** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store %struct.pci_driver* %2, %struct.pci_driver** %7, align 8
  %8 = load %struct.pci_driver*, %struct.pci_driver** %7, align 8
  %9 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** %11, align 8
  %13 = icmp ne i32 (%struct.pci_dev*)* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.eeh_dev*, %struct.eeh_dev** %5, align 8
  %16 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14, %3
  %20 = load i32, i32* @PCI_ERS_RESULT_NONE, align 4
  store i32 %20, i32* %4, align 4
  br label %40

21:                                               ; preds = %14
  %22 = load %struct.eeh_dev*, %struct.eeh_dev** %5, align 8
  %23 = load %struct.pci_driver*, %struct.pci_driver** %7, align 8
  %24 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @eeh_edev_info(%struct.eeh_dev* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.pci_driver*, %struct.pci_driver** %7, align 8
  %28 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)** %30, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %33 = call i32 %31(%struct.pci_dev* %32)
  %34 = load %struct.eeh_dev*, %struct.eeh_dev** %5, align 8
  %35 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PCI_ERS_RESULT_RECOVERED, align 4
  %38 = call i32 @pci_uevent_ers(i32 %36, i32 %37)
  %39 = load i32, i32* @PCI_ERS_RESULT_NONE, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %21, %19
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @eeh_edev_info(%struct.eeh_dev*, i8*, i32) #1

declare dso_local i32 @pci_uevent_ers(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
