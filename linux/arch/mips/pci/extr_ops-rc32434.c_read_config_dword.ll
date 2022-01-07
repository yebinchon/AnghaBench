; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-rc32434.c_read_config_dword.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_ops-rc32434.c_read_config_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i64 }

@PCI_ACCESS_READ = common dso_local global i32 0, align 4
@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_bus*, i32, i32, i32*)* @read_config_dword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_config_dword(%struct.pci_bus* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_bus* %0, %struct.pci_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 1, i32* %11, align 4
  %12 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %13 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @PCI_SLOT(i32 %17)
  %19 = icmp sgt i32 %18, 21
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %56

21:                                               ; preds = %16, %4
  br label %22

22:                                               ; preds = %48, %21
  %23 = load i32, i32* @PCI_ACCESS_READ, align 4
  %24 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @config_access(i32 %23, %struct.pci_bus* %24, i32 %25, i32 %26, i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @PCI_VENDOR_ID, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %22
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 65535
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, -65536
  br i1 %43, label %44, label %53

44:                                               ; preds = %41, %38, %35, %32
  %45 = load i32, i32* %11, align 4
  %46 = icmp sgt i32 %45, 4
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %56

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = mul nsw i32 %49, 2
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @msleep(i32 %51)
  br label %22

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %22
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %47, %20
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @config_access(i32, %struct.pci_bus*, i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
