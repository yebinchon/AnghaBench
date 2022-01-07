; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_msi.c_bringup_one_msi_queue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_msi.c_bringup_one_msi_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i32, i64, i32* }
%struct.sparc64_msiq_ops = type { i32 (%struct.pci_pbm_info.0*, i64, i64)* }
%struct.pci_pbm_info.0 = type opaque

@sparc64_msiq_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"MSIQ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_pbm_info*, %struct.sparc64_msiq_ops*, i64, i64)* @bringup_one_msi_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bringup_one_msi_queue(%struct.pci_pbm_info* %0, %struct.sparc64_msiq_ops* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_pbm_info*, align 8
  %7 = alloca %struct.sparc64_msiq_ops*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %6, align 8
  store %struct.sparc64_msiq_ops* %1, %struct.sparc64_msiq_ops** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.sparc64_msiq_ops*, %struct.sparc64_msiq_ops** %7, align 8
  %15 = getelementptr inbounds %struct.sparc64_msiq_ops, %struct.sparc64_msiq_ops* %14, i32 0, i32 0
  %16 = load i32 (%struct.pci_pbm_info.0*, i64, i64)*, i32 (%struct.pci_pbm_info.0*, i64, i64)** %15, align 8
  %17 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %18 = bitcast %struct.pci_pbm_info* %17 to %struct.pci_pbm_info.0*
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32 %16(%struct.pci_pbm_info.0* %18, i64 %19, i64 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %56

26:                                               ; preds = %4
  %27 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %28 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @cpumask_of_node(i32 %33)
  %35 = call i32 @cpumask_copy(i32* %13, i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @irq_set_affinity(i32 %36, i32* %13)
  br label %38

38:                                               ; preds = %32, %26
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @sparc64_msiq_interrupt, align 4
  %41 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %42 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %6, align 8
  %46 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %44, %47
  %49 = getelementptr inbounds i32, i32* %43, i64 %48
  %50 = call i32 @request_irq(i32 %39, i32 %40, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %5, align 4
  br label %56

55:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %53, %24
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @cpumask_copy(i32*, i32) #1

declare dso_local i32 @cpumask_of_node(i32) #1

declare dso_local i32 @irq_set_affinity(i32, i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
