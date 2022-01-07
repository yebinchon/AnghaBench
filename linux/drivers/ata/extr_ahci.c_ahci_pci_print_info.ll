; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci.c_ahci_pci_print_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci.c_ahci_pci_print_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32 }
%struct.pci_dev = type { i32 }

@PCI_CLASS_STORAGE_IDE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"IDE\00", align 1
@PCI_CLASS_STORAGE_SATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"SATA\00", align 1
@PCI_CLASS_STORAGE_RAID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"RAID\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_host*)* @ahci_pci_print_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_pci_print_info(%struct.ata_host* %0) #0 {
  %2 = alloca %struct.ata_host*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.ata_host* %0, %struct.ata_host** %2, align 8
  %6 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %7 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.pci_dev* @to_pci_dev(i32 %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %3, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = call i32 @pci_read_config_word(%struct.pci_dev* %10, i32 10, i64* %4)
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @PCI_CLASS_STORAGE_IDE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %29

16:                                               ; preds = %1
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @PCI_CLASS_STORAGE_SATA, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %28

21:                                               ; preds = %16
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @PCI_CLASS_STORAGE_RAID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %27

26:                                               ; preds = %21
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %27

27:                                               ; preds = %26, %25
  br label %28

28:                                               ; preds = %27, %20
  br label %29

29:                                               ; preds = %28, %15
  %30 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @ahci_print_info(%struct.ata_host* %30, i8* %31)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @ahci_print_info(%struct.ata_host*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
