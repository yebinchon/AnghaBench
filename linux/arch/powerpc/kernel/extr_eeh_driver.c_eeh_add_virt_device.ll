; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_driver.c_eeh_add_virt_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_driver.c_eeh_add_virt_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeh_dev = type { i32 }
%struct.pci_driver = type { i64 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"Not for VF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.eeh_dev*)* @eeh_add_virt_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @eeh_add_virt_device(%struct.eeh_dev* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.eeh_dev*, align 8
  %4 = alloca %struct.pci_driver*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.eeh_dev* %0, %struct.eeh_dev** %3, align 8
  %6 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %7 = call %struct.pci_dev* @eeh_dev_to_pci_dev(%struct.eeh_dev* %6)
  store %struct.pci_dev* %7, %struct.pci_dev** %5, align 8
  %8 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %9 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %14 = call i32 @eeh_edev_warn(%struct.eeh_dev* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %32

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = call %struct.pci_driver* @eeh_pcid_get(%struct.pci_dev* %16)
  store %struct.pci_driver* %17, %struct.pci_driver** %4, align 8
  %18 = load %struct.pci_driver*, %struct.pci_driver** %4, align 8
  %19 = icmp ne %struct.pci_driver* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load %struct.pci_driver*, %struct.pci_driver** %4, align 8
  %22 = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = call i32 @eeh_pcid_put(%struct.pci_dev* %26)
  store i8* null, i8** %2, align 8
  br label %32

28:                                               ; preds = %20
  %29 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %30 = call i32 @eeh_pcid_put(%struct.pci_dev* %29)
  br label %31

31:                                               ; preds = %28, %15
  store i8* null, i8** %2, align 8
  br label %32

32:                                               ; preds = %31, %25, %12
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

declare dso_local %struct.pci_dev* @eeh_dev_to_pci_dev(%struct.eeh_dev*) #1

declare dso_local i32 @eeh_edev_warn(%struct.eeh_dev*, i8*) #1

declare dso_local %struct.pci_driver* @eeh_pcid_get(%struct.pci_dev*) #1

declare dso_local i32 @eeh_pcid_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
