; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_bdx_uncore_cpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_bdx_uncore_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { %struct.pci_dev** }
%struct.pci_dev = type { i32 }
%struct.TYPE_6__ = type { i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@bdx_uncore_cbox = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@bdx_msr_uncores = common dso_local global i32** null, align 8
@uncore_msr_uncores = common dso_local global i32** null, align 8
@BDX_MSR_UNCORE_SBOX = common dso_local global i64 0, align 8
@uncore_extra_pci_dev = common dso_local global %struct.TYPE_5__* null, align 8
@HSWEP_PCI_PCU_3 = common dso_local global i64 0, align 8
@bdx_uncore_pcu_constraints = common dso_local global i32 0, align 4
@hswep_uncore_pcu = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bdx_uncore_cpu_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @boot_cpu_data, i32 0, i32 2), align 4
  %5 = call i32 @topology_phys_to_logical_pkg(i32 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bdx_uncore_cbox, i32 0, i32 0), align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @boot_cpu_data, i32 0, i32 0), align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @boot_cpu_data, i32 0, i32 0), align 8
  store i64 %10, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bdx_uncore_cbox, i32 0, i32 0), align 8
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i32**, i32*** @bdx_msr_uncores, align 8
  store i32** %12, i32*** @uncore_msr_uncores, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @boot_cpu_data, i32 0, i32 1), align 8
  %14 = icmp eq i32 %13, 86
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32**, i32*** @uncore_msr_uncores, align 8
  %17 = load i64, i64* @BDX_MSR_UNCORE_SBOX, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 %17
  store i32* null, i32** %18, align 8
  br label %52

19:                                               ; preds = %11
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @uncore_extra_pci_dev, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.pci_dev**, %struct.pci_dev*** %24, align 8
  %26 = load i64, i64* @HSWEP_PCI_PCU_3, align 8
  %27 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %25, i64 %26
  %28 = load %struct.pci_dev*, %struct.pci_dev** %27, align 8
  %29 = icmp ne %struct.pci_dev* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %19
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @uncore_extra_pci_dev, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.pci_dev**, %struct.pci_dev*** %35, align 8
  %37 = load i64, i64* @HSWEP_PCI_PCU_3, align 8
  %38 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %36, i64 %37
  %39 = load %struct.pci_dev*, %struct.pci_dev** %38, align 8
  store %struct.pci_dev* %39, %struct.pci_dev** %2, align 8
  %40 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %41 = call i32 @pci_read_config_dword(%struct.pci_dev* %40, i32 148, i32* %3)
  %42 = load i32, i32* %3, align 4
  %43 = ashr i32 %42, 6
  %44 = and i32 %43, 3
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %30
  %47 = load i32**, i32*** @bdx_msr_uncores, align 8
  %48 = load i64, i64* @BDX_MSR_UNCORE_SBOX, align 8
  %49 = getelementptr inbounds i32*, i32** %47, i64 %48
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %46, %30
  br label %51

51:                                               ; preds = %50, %19
  br label %52

52:                                               ; preds = %51, %15
  %53 = load i32, i32* @bdx_uncore_pcu_constraints, align 4
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hswep_uncore_pcu, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @topology_phys_to_logical_pkg(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
