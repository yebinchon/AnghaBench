; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_u3msi.c_find_ht_magic_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_mpic_u3msi.c_find_ht_magic_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.pci_bus* }
%struct.pci_bus = type { i64, %struct.pci_bus* }

@HT_CAPTYPE_MSI_MAPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @find_ht_magic_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_ht_magic_addr(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load %struct.pci_bus*, %struct.pci_bus** %9, align 8
  store %struct.pci_bus* %10, %struct.pci_bus** %6, align 8
  br label %11

11:                                               ; preds = %36, %2
  %12 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %13 = icmp ne %struct.pci_bus* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %11
  %20 = phi i1 [ false, %11 ], [ %18, %14 ]
  br i1 %20, label %21, label %40

21:                                               ; preds = %19
  %22 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %23 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @HT_CAPTYPE_MSI_MAPPING, align 4
  %26 = call i32 @pci_find_ht_capability(i64 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %31 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @read_ht_magic_addr(i64 %32, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %41

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %38 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %37, i32 0, i32 1
  %39 = load %struct.pci_bus*, %struct.pci_bus** %38, align 8
  store %struct.pci_bus* %39, %struct.pci_bus** %6, align 8
  br label %11

40:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %29
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @pci_find_ht_capability(i64, i32) #1

declare dso_local i32 @read_ht_magic_addr(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
