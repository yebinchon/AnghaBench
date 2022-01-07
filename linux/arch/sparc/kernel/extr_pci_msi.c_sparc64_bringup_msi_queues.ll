; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_msi.c_sparc64_bringup_msi_queues.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_msi.c_sparc64_bringup_msi_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i32, i32, i32 }
%struct.sparc64_msiq_ops = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_pbm_info*, %struct.sparc64_msiq_ops*)* @sparc64_bringup_msi_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc64_bringup_msi_queues(%struct.pci_pbm_info* %0, %struct.sparc64_msiq_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_pbm_info*, align 8
  %5 = alloca %struct.sparc64_msiq_ops*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %4, align 8
  store %struct.sparc64_msiq_ops* %1, %struct.sparc64_msiq_ops** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %39, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %4, align 8
  %13 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %4, align 8
  %19 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %4, align 8
  %25 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %8, align 8
  %29 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %4, align 8
  %30 = load %struct.sparc64_msiq_ops*, %struct.sparc64_msiq_ops** %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @bringup_one_msi_queue(%struct.pci_pbm_info* %29, %struct.sparc64_msiq_ops* %30, i64 %31, i64 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %16
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %43

38:                                               ; preds = %16
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %10

42:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %36
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @bringup_one_msi_queue(%struct.pci_pbm_info*, %struct.sparc64_msiq_ops*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
