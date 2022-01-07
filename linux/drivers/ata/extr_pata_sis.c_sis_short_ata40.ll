; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_sis.c_sis_short_ata40.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_sis.c_sis_short_ata40.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_laptop = type { i64, i64, i64 }
%struct.pci_dev = type { i64, i64, i64 }

@sis_laptop = common dso_local global %struct.sis_laptop* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @sis_short_ata40 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_short_ata40(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.sis_laptop*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = load %struct.sis_laptop*, %struct.sis_laptop** @sis_laptop, align 8
  %6 = getelementptr inbounds %struct.sis_laptop, %struct.sis_laptop* %5, i64 0
  store %struct.sis_laptop* %6, %struct.sis_laptop** %4, align 8
  br label %7

7:                                                ; preds = %37, %1
  %8 = load %struct.sis_laptop*, %struct.sis_laptop** %4, align 8
  %9 = getelementptr inbounds %struct.sis_laptop, %struct.sis_laptop* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %7
  %13 = load %struct.sis_laptop*, %struct.sis_laptop** %4, align 8
  %14 = getelementptr inbounds %struct.sis_laptop, %struct.sis_laptop* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %12
  %21 = load %struct.sis_laptop*, %struct.sis_laptop** %4, align 8
  %22 = getelementptr inbounds %struct.sis_laptop, %struct.sis_laptop* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load %struct.sis_laptop*, %struct.sis_laptop** %4, align 8
  %30 = getelementptr inbounds %struct.sis_laptop, %struct.sis_laptop* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %41

37:                                               ; preds = %28, %20, %12
  %38 = load %struct.sis_laptop*, %struct.sis_laptop** %4, align 8
  %39 = getelementptr inbounds %struct.sis_laptop, %struct.sis_laptop* %38, i32 1
  store %struct.sis_laptop* %39, %struct.sis_laptop** %4, align 8
  br label %7

40:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
