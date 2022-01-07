; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_hswep_uncore_cpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_hswep_uncore_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i64* }
%struct.TYPE_6__ = type { i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@hswep_uncore_cbox = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@uncore_extra_pci_dev = common dso_local global %struct.TYPE_5__* null, align 8
@HSWEP_PCI_PCU_3 = common dso_local global i64 0, align 8
@hswep_uncore_sbox = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@hswep_msr_uncores = common dso_local global i32 0, align 4
@uncore_msr_uncores = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hswep_uncore_cpu_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @boot_cpu_data, i32 0, i32 0), align 8
  store i32 %3, i32* %1, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hswep_uncore_cbox, i32 0, i32 0), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @boot_cpu_data, i32 0, i32 1), align 8
  %6 = icmp sgt i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @boot_cpu_data, i32 0, i32 1), align 8
  store i64 %8, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @hswep_uncore_cbox, i32 0, i32 0), align 8
  br label %9

9:                                                ; preds = %7, %0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @uncore_extra_pci_dev, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @HSWEP_PCI_PCU_3, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %9
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @uncore_extra_pci_dev, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* @HSWEP_PCI_PCU_3, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @pci_read_config_dword(i64 %29, i32 148, i32* %2)
  %31 = load i32, i32* %2, align 4
  %32 = ashr i32 %31, 6
  %33 = and i32 %32, 3
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hswep_uncore_sbox, i32 0, i32 0), align 4
  br label %36

36:                                               ; preds = %35, %20
  br label %37

37:                                               ; preds = %36, %9
  %38 = load i32, i32* @hswep_msr_uncores, align 4
  store i32 %38, i32* @uncore_msr_uncores, align 4
  ret void
}

declare dso_local i32 @pci_read_config_dword(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
