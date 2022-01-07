; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_pe.c_eeh_pe_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_pe.c_eeh_pe_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeh_pe = type { i32 }
%struct.eeh_dev = type { %struct.eeh_pe*, i64 }
%struct.pci_dn = type { %struct.pci_dn* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.eeh_pe* (%struct.eeh_dev*)* @eeh_pe_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.eeh_pe* @eeh_pe_get_parent(%struct.eeh_dev* %0) #0 {
  %2 = alloca %struct.eeh_pe*, align 8
  %3 = alloca %struct.eeh_dev*, align 8
  %4 = alloca %struct.eeh_dev*, align 8
  %5 = alloca %struct.pci_dn*, align 8
  store %struct.eeh_dev* %0, %struct.eeh_dev** %3, align 8
  %6 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %7 = call %struct.pci_dn* @eeh_dev_to_pdn(%struct.eeh_dev* %6)
  store %struct.pci_dn* %7, %struct.pci_dn** %5, align 8
  %8 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %9 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %14 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.pci_dn* @pci_get_pdn(i64 %15)
  store %struct.pci_dn* %16, %struct.pci_dn** %5, align 8
  br label %27

17:                                               ; preds = %1
  %18 = load %struct.pci_dn*, %struct.pci_dn** %5, align 8
  %19 = icmp ne %struct.pci_dn* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.pci_dn*, %struct.pci_dn** %5, align 8
  %22 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %21, i32 0, i32 0
  %23 = load %struct.pci_dn*, %struct.pci_dn** %22, align 8
  br label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi %struct.pci_dn* [ %23, %20 ], [ null, %24 ]
  store %struct.pci_dn* %26, %struct.pci_dn** %5, align 8
  br label %27

27:                                               ; preds = %25, %12
  br label %28

28:                                               ; preds = %46, %27
  %29 = load %struct.pci_dn*, %struct.pci_dn** %5, align 8
  %30 = icmp ne %struct.pci_dn* %29, null
  br i1 %30, label %31, label %50

31:                                               ; preds = %28
  %32 = load %struct.pci_dn*, %struct.pci_dn** %5, align 8
  %33 = call %struct.eeh_dev* @pdn_to_eeh_dev(%struct.pci_dn* %32)
  store %struct.eeh_dev* %33, %struct.eeh_dev** %4, align 8
  %34 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %35 = icmp ne %struct.eeh_dev* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store %struct.eeh_pe* null, %struct.eeh_pe** %2, align 8
  br label %51

37:                                               ; preds = %31
  %38 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %39 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %38, i32 0, i32 0
  %40 = load %struct.eeh_pe*, %struct.eeh_pe** %39, align 8
  %41 = icmp ne %struct.eeh_pe* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.eeh_dev*, %struct.eeh_dev** %4, align 8
  %44 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %43, i32 0, i32 0
  %45 = load %struct.eeh_pe*, %struct.eeh_pe** %44, align 8
  store %struct.eeh_pe* %45, %struct.eeh_pe** %2, align 8
  br label %51

46:                                               ; preds = %37
  %47 = load %struct.pci_dn*, %struct.pci_dn** %5, align 8
  %48 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %47, i32 0, i32 0
  %49 = load %struct.pci_dn*, %struct.pci_dn** %48, align 8
  store %struct.pci_dn* %49, %struct.pci_dn** %5, align 8
  br label %28

50:                                               ; preds = %28
  store %struct.eeh_pe* null, %struct.eeh_pe** %2, align 8
  br label %51

51:                                               ; preds = %50, %42, %36
  %52 = load %struct.eeh_pe*, %struct.eeh_pe** %2, align 8
  ret %struct.eeh_pe* %52
}

declare dso_local %struct.pci_dn* @eeh_dev_to_pdn(%struct.eeh_dev*) #1

declare dso_local %struct.pci_dn* @pci_get_pdn(i64) #1

declare dso_local %struct.eeh_dev* @pdn_to_eeh_dev(%struct.pci_dn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
