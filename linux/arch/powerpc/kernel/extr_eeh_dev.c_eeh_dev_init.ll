; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_dev.c_eeh_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_dev.c_eeh_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeh_dev = type { i32, i32, %struct.pci_dn* }
%struct.pci_dn = type { i32, i32, i32, %struct.eeh_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.eeh_dev* @eeh_dev_init(%struct.pci_dn* %0) #0 {
  %2 = alloca %struct.eeh_dev*, align 8
  %3 = alloca %struct.pci_dn*, align 8
  %4 = alloca %struct.eeh_dev*, align 8
  store %struct.pci_dn* %0, %struct.pci_dn** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.eeh_dev* @kzalloc(i32 16, i32 %5)
  store %struct.eeh_dev* %6, %struct.eeh_dev** %4, align 8
  %7 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %8 = icmp ne %struct.eeh_dev* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.eeh_dev* null, %struct.eeh_dev** %2, align 8
  br label %33

10:                                               ; preds = %1
  %11 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %12 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %13 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %12, i32 0, i32 3
  store %struct.eeh_dev* %11, %struct.eeh_dev** %13, align 8
  %14 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %15 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %16 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %15, i32 0, i32 2
  store %struct.pci_dn* %14, %struct.pci_dn** %16, align 8
  %17 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %18 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 %19, 8
  %21 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %22 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %20, %23
  %25 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %26 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %28 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %31 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  store %struct.eeh_dev* %32, %struct.eeh_dev** %2, align 8
  br label %33

33:                                               ; preds = %10, %9
  %34 = load %struct.eeh_dev*, %struct.eeh_dev** %2, align 8
  ret %struct.eeh_dev* %34
}

declare dso_local %struct.eeh_dev* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
